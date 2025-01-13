#! /bin/bash
cd /home/avraham/Monastery/Essene
export PYTHONPATH=/home/avraham/Monastery/
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/Essene/download.py > download_log.out &'
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/Essene/snvs_pipeline.py > snvs_pipe.out &'