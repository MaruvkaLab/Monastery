#! /bin/bash
cd /home/avraham/Monastery/snvs_worker_node
export PYTHONPATH=/home/avraham/Monastery/
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/snvs_worker_node/download.py > download_log.out &'
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/snvs_worker_node/snvs_pipeline.py > snvs_pipe.out &'