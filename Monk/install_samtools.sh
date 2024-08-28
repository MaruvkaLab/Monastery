

#gcloud compute ssh --zone "us-central1-c" "anchorite" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240818-164635" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240819-074620" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062309" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240819-074650" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062207" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062241" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"
#gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062337" --project "iucc-cancer-vaccine" --command "cd Abbot && git pull"


export COMMAND="ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-c" "anchorite" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240818-164635" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240819-074620" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062309" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240819-074650" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062207" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062241" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"
gcloud compute ssh --zone "us-central1-a" "monk2-20240820-062337" --project "iucc-cancer-vaccine" --command "ps aux | grep download.py"