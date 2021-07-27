#!/bin/bash
timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "Running Python job at $timestamp"

python -u /app/app.py
