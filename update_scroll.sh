#!/bin/bash

MODIFIED=$(git status | grep modified | grep  Abbot | cut -f2 | tr -s ' ' | cut -f2 -d ' ')
#gcloud compute scp $MODIFIED avraham@anchorite:/home/avraham/Abbot/Monk --zone "us-central1-c" --project "iucc-cancer-vaccine"
gcloud compute scp $MODIFIED avraham@scroll:/home/avraham/Monastery/Abbot --zone "us-central1-c" --project "iucc-cancer-vaccine"