#!/bin/bash

MODIFIED=$(git status | grep modified | grep Essene | cut -f2 | tr -s ' ' | cut -f2 -d ' ')
gcloud compute scp Abbot/scroll.db avraham@scroll:/home/avraham/Monastery/Abbot --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp $MODIFIED avraham@anchorite:/home/avraham/Abbot/Monk --zone "us-central1-c" --project "iucc-cancer-vaccine"
#gcloud compute scp $MODIFIED avraham@essene3:/home/avraham/Monastery/Essene --zone "us-central1-c" --project "iucc-cancer-vaccine"
#gcloud compute scp $MODIFIED avraham@clone1:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp $MODIFIED avraham@indels-archetype:/home/avraham/Monastery/Essene --zone "us-central1-f" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@indels-ws:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"


#gcloud compute scp Essene/download.py avraham@indels-ws:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@indels-ws:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@indels-ws:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"


#gcloud compute scp Essene/download.py avraham@clone1:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-123423:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-123527:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-130247:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-130312:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-130331:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-143346:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-143359:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-143416:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone1-20250112-143428:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone2:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone3:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone4:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@clone5:/home/avraham/Monastery/Essene --zone "us-central1-a" --project "iucc-cancer-vaccine"
#gcloud compute scp Essene/download.py avraham@essene3:/home/avraham/Monastery/Essene --zone "us-central1-c" --project "iucc-cancer-vaccine"

#clone1                            us-central1-a  custom
#clone1-20250112-123423            us-central1-a  custom
#clone1-20250112-123527            us-central1-a  custom
#clone1-20250112-130247            us-central1-a  custom
#clone1-20250112-130312            us-central1-a  custom
#clone1-20250112-130331            us-central1-a  custom
#clone1-20250112-143346            us-central1-a  custom
#clone1-20250112-143359            us-central1-a  custom
#clone1-20250112-143416            us-central1-a  custom
#clone1-20250112-143428            us-central1-a  custom
#clone2                            us-central1-a  custom
#clone3                            us-central1-a  custom
#clone4                            us-central1-a  custom
#clone5
#essene3 us-central1-c
#--zone "us-central1-a" "indels-ws" --project "iucc-cancer-vaccine"

#clone1                            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.27    34.42.150.24     RUNNING
#clone1-20250112-123423            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.32    34.29.148.133    RUNNING
#clone1-20250112-123527            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.33    34.45.248.176    RUNNING
#clone1-20250112-130247            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.38    35.188.191.119   RUNNING
#clone1-20250112-130312            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.39    34.42.178.36     RUNNING
#clone1-20250112-130331            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.40    34.171.146.83    RUNNING
#clone1-20250112-143346            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.41    34.66.18.152     RUNNING
#clone1-20250112-143359            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.42    34.27.204.198    RUNNING
#clone1-20250112-143416            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.43    34.173.212.119   RUNNING
#clone1-20250112-143428            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.44    34.59.200.125    RUNNING
#clone2                            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.28    34.27.93.20      RUNNING
#clone3                            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.29    34.58.147.150    RUNNING
#clone4                            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.30    34.59.96.127     RUNNING
#clone5                            us-central1-a  custom (n2, 12 vCPU, 48.00 GiB)               10.128.0.31    34.134.78.168    RUNNING
#indels-archetype-20250113-182447  us-central1-a  n2-highcpu-16                                 10.128.0.48    34.121.146.121   RUNNING
#indels-archetype-20250113-182513  us-central1-a  n2-highcpu-16                                 10.128.0.49    34.58.122.82     RUNNING
#indels-archetype-20250113-182527  us-central1-a  n2-highcpu-16                                 10.128.0.50    34.133.115.228   RUNNING
#indels-archetype-20250113-182537  us-central1-a  n2-highcpu-16                                 10.128.0.51    34.31.72.64      RUNNING
#indels-archetype-20250113-182547  us-central1-a  n2-highcpu-16                                 10.128.0.52    34.41.185.18     RUNNING
#indels-archetype-20250114-051720  us-central1-a  n2-highcpu-16                                 10.128.0.53    34.58.243.237    RUNNING
#indels-archetype-20250114-051742  us-central1-a  n2-highcpu-16                                 10.128.0.54    34.69.219.165    RUNNING
#indels-archetype-20250114-051951  us-central1-a  n2-highcpu-16                                 10.128.0.55    34.70.95.33      RUNNING
#indels-archetype-20250114-052007  us-central1-a  n2-highcpu-16                                 10.128.0.56    34.69.66.231     RUNNING
#indels-archetype-20250114-052025  us-central1-a  n2-highcpu-16                                 10.128.0.57    34.41.95.253     RUNNING
#indels-archetype-20250114-052037  us-central1-a  n2-highcpu-16                                 10.128.0.58    35.184.138.164   RUNNING
#indels-archetype-20250114-052726  us-central1-a  n2-highcpu-16                                 10.128.0.62    34.133.12.93     RUNNING
#indels-archetype-20250114-054611  us-central1-a  n2-highcpu-16                                 10.128.15.193  34.67.137.2      RUNNING
#indels-archetype-20250114-055550  us-central1-a  n2-highcpu-16                                 10.128.15.196  34.171.78.14     RUNNING
#indels-archetype-20250114-055937  us-central1-a  n2-highcpu-16                                 10.128.15.197  34.27.17.38      RUNNING
#indels-archetype-20250114-061850  us-central1-a  n2-highcpu-16                                 10.128.15.199  34.136.107.122   RUNNING
#indels-archetype-20250114-062327  us-central1-a  n2-highcpu-16                                 10.128.15.200  104.197.129.192  RUNNING
#indels-archetype-20250114-063604  us-central1-a  n2-highcpu-16                                 10.128.15.201  34.134.43.103    RUNNING
#indels-archetype-20250114-064219  us-central1-a  n2-highcpu-16                                 10.128.15.202  34.170.201.49    RUNNING
#indels-archetype-20250114-071114  us-central1-a  n2-highcpu-16                                 10.128.15.203  35.188.165.39    RUNNING
#indels-archetype-20250114-071125  us-central1-a  n2-highcpu-16                                 10.128.15.204  34.70.86.250     RUNNING
#indels-archetype-20250114-072208  us-central1-a  n2-highcpu-16                                 10.128.15.205  34.170.182.103   RUNNING
#indels-archetype-20250114-072221  us-central1-a  n2-highcpu-16                                 10.128.15.206  34.70.193.29     RUNNING
#indels-archetype-20250114-074041  us-central1-a  n2-highcpu-16                                 10.128.15.208  34.58.97.138     RUNNING
#indels-archetype-20250114-074052  us-central1-a  n2-highcpu-16                                 10.128.15.209  35.193.53.247    RUNNING
#indels-archetype-20250114-074815  us-central1-a  n2-highcpu-16                                 10.128.15.210  34.134.239.195   RUNNING
#indels-archetype-20250114-080400  us-central1-a  n2-highcpu-16                                 10.128.15.213  35.188.213.211   RUNNING
#indels-archetype-20250114-082036  us-central1-a  n2-highcpu-16                                 10.128.15.215  34.58.197.63     RUNNING
#indels-archetype-20250114-090122  us-central1-a  n2-highcpu-16                                 10.128.15.216  34.67.124.188    RUNNING
#indels-ws                         us-central1-a  e2-highcpu-2                                  10.128.0.47    35.192.176.133   RUNNING
#indelsarc2-20250114-091015        us-central1-a  n2-highcpu-16                                 10.128.15.217  34.60.83.138     RUNNING
#indelsarc2-20250114-091224        us-central1-a  n2-highcpu-16                                 10.128.15.218  34.44.238.63     RUNNING
#indelsarc2-20250114-091235        us-central1-a  n2-highcpu-16                                 10.128.15.219  34.16.103.120    RUNNING
#indelsarc2-20250114-091245        us-central1-a  n2-highcpu-16                                 10.128.15.220  34.31.81.48      RUNNING
#indelsarc2-20250114-091258        us-central1-a  n2-highcpu-16                                 10.128.15.221  34.69.76.56      RUNNING
#indelsarc2-20250114-091306        us-central1-a  n2-highcpu-16                                 10.128.15.222  34.46.57.15      RUNNING
#indelsarc3-20250114-091316        us-central1-a  n2-highcpu-16                                 10.128.15.223  34.57.241.32     RUNNING
#indelsarc3-20250114-091326        us-central1-a  n2-highcpu-16                                 10.128.15.224  104.198.18.218   RUNNING
#indelsarc3-20250114-091354        us-central1-a  n2-highcpu-16                                 10.128.15.225  34.28.255.9      RUNNING
#indelsarc3-20250114-091405        us-central1-a  n2-highcpu-16                                 10.128.15.226  35.232.163.211   RUNNING
#indelsarc3-20250114-091414        us-central1-a  n2-highcpu-16                                 10.128.15.227  34.28.150.96     RUNNING
#indelsarc3-20250114-091425        us-central1-a  n2-highcpu-16                                 10.128.15.228  34.60.1.77       RUNNING
#indelsarc4-20250114-091436        us-central1-a  n2-highcpu-16                                 10.128.15.229  104.154.232.166  RUNNING
#indelsarc4-20250114-091446        us-central1-a  n2-highcpu-16                                 10.128.15.230  34.57.216.104    RUNNING
#indelsarc4-20250114-091456        us-central1-a  n2-highcpu-16                                 10.128.15.231  35.239.86.202    RUNNING
#indelsarc4-20250114-091505        us-central1-a  n2-highcpu-16                                 10.128.15.232  34.133.50.26     RUNNING
#indelsarc4-20250114-091517        us-central1-a  n2-highcpu-16                                 10.128.15.233  34.30.125.137    RUNNING
#indelsarc4-20250114-091528        us-central1-a  n2-highcpu-16                                 10.128.15.234  34.30.31.238     RUNNING
#indelsarc5-20250114-091542        us-central1-a  n2-highcpu-16                                 10.128.15.235  34.59.76.193     RUNNING
#indelsarc5-20250114-091553        us-central1-a  n2-highcpu-16                                 10.128.15.236  34.134.19.121    RUNNING
#indelsarc5-20250114-091603        us-central1-a  n2-highcpu-16                                 10.128.15.237  34.44.165.185    RUNNING
#indelsarc5-20250114-091614        us-central1-a  n2-highcpu-16                                 10.128.15.238  34.59.52.52      RUNNING
#indelsarc5-20250114-091622        us-central1-a  n2-highcpu-16                                 10.128.15.239  34.27.196.147    RUNNING
#indelsarc6-20250114-091632        us-central1-a  n2-highcpu-16                                 10.128.15.240  35.239.92.229    RUNNING
#indelsarc6-20250114-091641        us-central1-a  n2-highcpu-16                                 10.128.15.241  34.134.173.135   RUNNING
#indelsarc6-20250114-091651        us-central1-a  n2-highcpu-16                                 10.128.15.242  34.134.117.203   RUNNING
#indelsarc6-20250114-091700        us-central1-a  n2-highcpu-16                                 10.128.15.243  34.16.111.200    RUNNING
#indelsarc6-20250114-091709        us-central1-a  n2-highcpu-16                                 10.128.15.244  34.134.97.4      RUNNING
#indelsarc6-20250114-091720        us-central1-a  n2-highcpu-16                                 10.128.15.245  35.223.24.215    RUNNING
#indelsarc7-20250114-091741        us-central1-a  n2-highcpu-16                                 10.128.15.247  34.60.97.117     RUNNING
#indelsarc7-20250114-091755        us-central1-a  n2-highcpu-16                                 10.128.15.248  34.132.34.225    RUNNING
#indelsarc7-20250114-091804        us-central1-a  n2-highcpu-16                                 10.128.15.249  34.172.153.96    RUNNING
#indelsarc7-20250114-091813        us-central1-a  n2-highcpu-16                                 10.128.15.250  34.133.105.120   RUNNING
#indelsarc7-20250114-091822        us-central1-a  n2-highcpu-16                                 10.128.15.251  34.58.20.22      RUNNING
#indelsarc7-20250114-091832        us-central1-a  n2-highcpu-16                                 10.128.15.252  34.16.57.123     RUNNING
#scroll                            us-central1-a  e2-highcpu-2                                  10.128.0.20    34.66.171.43     RUNNING
#essene3                           us-central1-c  custom (n4, 12 vCPU, 48.00 GiB)               10.128.0.21    34.70.59.35      RUNNING
#indels-archetype                  us-central1-f  n2-highcpu-16                                 10.128.0.46    34.31.155.233    RUNNING
