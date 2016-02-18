#!/bin/bash

sleep 30
celery flower --port=5555 --conf=flowerconfig.py
