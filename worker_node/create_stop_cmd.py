with open("needed_servers.txt", 'r') as of:
    servers = of.readlines()
servers = [s.rstrip() for s in servers]
cmd = f"gcloud compute instances stop {' '.join(servers)} --zone=\"us-central1-a\""
print(cmd)