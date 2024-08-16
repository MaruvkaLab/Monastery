#! /bin/bash
mkdir -p /run/texas
chmod 777 /run/texas/
chmod 777 /run/texas/download
runuser -l avraham -c 'nohup python3 -u /home/avraham/Abbot/Monk/download.py > /run/texas/download &'
runuser -l avraham -c 'nohup python3 -u /home/avraham/Abbot/Monk/msmutect_loop.py > /home/avraham/Abbot/Monk/msmutect_loop.err &'