#!/bin/bash

# Ensure Python and pip are installed
apt-get update
apt-get install -y python3 python3-pip

# Install project dependencies
pip3 install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput


chmod +x build_files.sh
