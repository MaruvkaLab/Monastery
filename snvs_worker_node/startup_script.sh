#! /bin/bash
cd /home/avraham/Monastery/worker_node
export PYTHONPATH=/home/avraham/Monastery/
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/worker_node/download.py > download_log.out &'
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/worker_node/msmutect_loop.py> msmutect_loop.out &'