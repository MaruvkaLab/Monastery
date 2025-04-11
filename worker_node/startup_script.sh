#! /bin/bash
mkdir -p /run/texas
chmod 777 /run/texas/
chmod 777 /run/texas/download
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/worker_node/download.py > /run/texas/download &'
runuser -l avraham -c 'nohup python3 -u /home/avraham/Monastery/worker_node/msmutect_loop.py > /home/avraham/principle_server/worker_node/msmutect_loop.err &'