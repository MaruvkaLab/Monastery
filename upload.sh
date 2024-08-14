#!/bin/bash

gcloud compute scp --recurse /home/avraham/MaruvkaLab/Texas/Abbot/  avraham@anchorite:/home/avraham --zone "us-central1-c" --project "iucc-cancer-vaccine"