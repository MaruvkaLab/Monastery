with open("update_all.sh", 'w+') as output_file:
    with open("vms_list.txt", 'r') as croc:
        all_vms = croc.readlines()
        for vm in all_vms:
            output_file.write(f'gcloud compute ssh --zone "us-central1-a" "{vm.strip()}" --project "iucc-cancer-vaccine" --command "cd /home/avraham/Monastery && git stash && git pull"\n')