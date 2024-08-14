#!/bin/bash

MODIFIED=$(git status | grep modified | cut -f2 | tr -s ' ' | cut -f2 -d ' ')
gcloud compute scp $MODIFIED avraham@anchorite:/home/avraham/Abbot/Monk --zone "us-central1-c" --project "iucc-cancer-vaccine"