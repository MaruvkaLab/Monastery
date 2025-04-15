#!/bin/bash

MODIFIED=$(git status | grep modified | grep worker_node | cut -f2 | tr -s ' ' | cut -f2 -d ' ')

echo $MODIFIED
gcloud compute scp $MODIFIED avraham@instance-20250409-162025:/home/avraham/Monastery/worker_node --zone "us-central1-c" --project "iucc-cancer-vaccine"
