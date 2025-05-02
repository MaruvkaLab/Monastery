import subprocess, os
with open("all_servers.txt", 'r') as servers:
    all_servers = servers.readlines()
env = os.environ.copy()
for s in all_servers[:5]:
    s = s.rstrip()

    cmd = f"gcloud compute ssh --zone \"us-central1-a\" \"{s}\" --project \"iucc-cancer-vaccine\" --command 'ps aux | grep loop | wc -l'"
    split_cmd = cmd.split(" ")
    result = subprocess.run(split_cmd, capture_output=True, text=True, env=env)
    print(s + ": " +result.stdout)