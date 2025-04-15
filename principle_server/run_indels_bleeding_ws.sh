#!/bin/bash
export PYTHONPATH='/home/avraham/Monastery'
/home/avraham/.local/bin/gunicorn -w 10 -b 10.128.0.33:8080 main:app
