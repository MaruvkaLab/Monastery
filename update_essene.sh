#!/bin/bash

MODIFIED=$(git status | grep modified | grep Essene | cut -f2 | tr -s ' ' | cut -f2 -d ' ')
#gcloud compute scp $MODIFIED avraham@anchorite:/home/avraham/Abbot/Monk --zone "us-central1-c" --project "iucc-cancer-vaccine"
#gcloud compute scp $MODIFIED avraham@essene3:/home/avraham/Monastery/Essene --zone "us-central1-c" --project "iucc-cancer-vaccine"
gcloud compute scp $MODIFIED avraham@clone1:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Abbot/indels.db avraham@indels-ws:/home/avraham/Monastery/Abbot --zone "us-central1-a" --project "iucc-cancer-vaccine"