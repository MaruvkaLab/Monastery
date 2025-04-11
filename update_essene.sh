#!/bin/bash

MODIFIED=$(git status | grep modified | grep Essene | cut -f2 | tr -s ' ' | cut -f2 -d ' ')

gcloud compute scp Abbot/indels.db avraham@indels-ws:/home/avraham/Monastery/Abbot --zone "us-central1-c" --project "iucc-cancer-vaccine"
