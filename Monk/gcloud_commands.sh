

gcloud compute instances list

gcloud compute ssh --zone "us-central1-a" "[name]" --project "quick-woodland-431215-n8" --command "wget https://arebirdsreal.com/"

gsutil cp index.html gs://croctrap123bucketat

gcloud compute scp --zone "us-central1-a" --project "quick-woodland-431215-n8" /home/avraham/MaruvkaLab/msmutect_runs/data/hg19_all_loci_sorted_new avraham@monk1:/home/avraham

gcloud compute scp --recurse /home/avraham/MaruvkaLab/Texas/Abbot/  avraham@abbot:/home/avraham --zone "us-central1-c" --project "iucc-cancer-vaccine"