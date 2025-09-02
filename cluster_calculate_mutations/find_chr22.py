import io, os, sys

def parse_sq_order(fp):
    fp.seek(0)
    order = []
    header_end = fp.tell()
    for line in fp:
        if not line.startswith(b"@"):
            # first alignment line reached
            header_end = fp.tell() - len(line)
            break
        if line.startswith(b"@SQ"):
            # @SQ\tSN:chr22\tLN:...
            fields = line.rstrip(b"\n").split(b"\t")
            sn = next((f[3:] for f in fields if f.startswith(b"SN:")), None)
            if sn is not None:
                order.append(sn)
    # Build rank map
    rank = {name: i for i, name in enumerate(order)}
    return rank, header_end

def read_record_at_or_after(fp, offset):
    """Seek to >= offset, align to next full line, return (offset_of_line, line_bytes)."""
    size = fp.seek(0, os.SEEK_END)
    if offset >= size:
        return None, None
    fp.seek(max(0, offset))
    if offset != 0:
        # discard partial line
        fp.readline()
    pos = fp.tell()
    line = fp.readline()
    if not line:
        return None, None
    if line.startswith(b"@"):
        # skip any header that might be here (shouldn't happen mid-file, but be safe)
        while line and line.startswith(b"@"):
            pos = fp.tell()
            line = fp.readline()
        if not line:
            return None, None
    return pos, line

def key_from_line(line, rank_map):
    # SAM: QNAME FLAG RNAME POS ...
    parts = line.split(b"\t", 5)
    if len(parts) < 4:
        return None  # malformed
    rname, pos_b = parts[2], parts[3]
    try:
        pos = int(pos_b)
    except ValueError:
        return None
    rrank = rank_map.get(rname, None)
    if rrank is None:
        # If reference isn’t in @SQ (e.g., * for unmapped), place after all.
        rrank = 10**9
    return (rrank, pos)

def lower_bound(fp, start_off, end_off, target_rank, rank_map):
    """First line with ref_rank >= target_rank; returns (offset, line) or (None,None)."""
    lo, hi = start_off, end_off
    best = (None, None)
    while lo < hi:
        mid = (lo + hi) // 2
        pos, line = read_record_at_or_after(fp, mid)
        if line is None:
            hi = mid
            continue
        k = key_from_line(line, rank_map)
        if k is None:
            # skip malformed
            lo = fp.tell()
            continue
        if k[0] < target_rank:
            lo = fp.tell()   # move right
        else:
            best = (pos, line)
            hi = pos         # move left
    return best

def upper_bound(fp, start_off, end_off, target_rank, rank_map):
    """First line with ref_rank > target_rank; returns (offset, line) or (end_off,None)."""
    lo, hi = start_off, end_off
    best = (None, None)
    while lo < hi:
        mid = (lo + hi) // 2
        pos, line = read_record_at_or_after(fp, mid)
        if line is None:
            hi = mid
            continue
        k = key_from_line(line, rank_map)
        if k is None:
            lo = fp.tell()
            continue
        if k[0] <= target_rank:
            lo = fp.tell()   # move right
        else:
            best = (pos, line)
            hi = pos         # move left
    if best == (None, None):
        return (end_off, None)
    return best

def main(path, chrom=b"chr22"):
    with open(path, "rb") as fp:
        rank_map, body_start = parse_sq_order(fp)
        # Fallback to accept "22" if "chr22" not found
        target = chrom if chrom in rank_map else b"22"
        if target not in rank_map:
            sys.stderr.write(f"Chrom {chrom.decode()} not found in @SQ; tried 22 as well.\n")
            sys.exit(1)
        target_rank = rank_map[target]

        fp.seek(0, os.SEEK_END)
        end_off = fp.tell()

        # Find first line with ref_rank >= target_rank
        first_pos, first_line = lower_bound(fp, body_start, end_off, target_rank, rank_map)
        if first_line is None:
            sys.stderr.write("No alignments found.\n")
            sys.exit(1)

        # Check that it is exactly target_rank (not > target)
        if key_from_line(first_line, rank_map)[0] != target_rank:
            sys.stderr.write(f"No alignments for {target.decode()}.\n")
            sys.exit(1)

        # Find first line with ref_rank > target_rank, then step back one line to get last
        ub_pos, _ = upper_bound(fp, body_start, end_off, target_rank, rank_map)

        # Walk back from ub_pos to get the last full line before it
        # (we’ll do a small backwards scan to previous newline)
        step = 1 << 16
        search_start = max(body_start, ub_pos - step)
        fp.seek(search_start)
        tail = fp.read(ub_pos - search_start)
        last_nl = tail.rfind(b"\n")
        if last_nl == -1:
            # the last chr22 line starts exactly at search_start
            last_start = search_start
        else:
            last_start = search_start + last_nl + 1

        fp.seek(last_start)
        last_line = fp.readline()

        sys.stdout.write("FIRST:\n")
        sys.stdout.buffer.write(first_line)
        sys.stdout.write("LAST:\n")
        sys.stdout.buffer.write(last_line)


if __name__ == "__main__":
    # usage: python find_chr22_first_last.py sorted.sam [chr_name]
    sam = sys.argv[1]
    chrom = sys.argv[2].encode() if len(sys.argv) > 2 else b"chr22"
    main(sam, chrom)