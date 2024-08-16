#!/bin/bash
export PYTHONPATH='/home/avraham/Abbot'
/home/avraham/.local/bin/gunicorn -w 10 -b 10.128.0.3:8080 main:app
