#!/bin/bash

# Ensure the correct Python environment is used
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput
