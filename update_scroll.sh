#!/bin/bash

MODIFIED=$(git status | grep modified | grep  principle_server | cut -f2 | tr -s ' ' | cut -f2 -d ' ')
#gcloud compute scp $MODIFIED avraham@anchorite:/home/avraham/principle_server/worker_node --zone "us-central1-c" --project "iucc-cancer-vaccine"
gcloud compute scp $MODIFIED avraham@bleeding-principal:/home/avraham/Monastery/principle_server --zone "us-central1-a" --project "iucc-cancer-vaccine"