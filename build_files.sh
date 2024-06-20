#!/bin/bash

# Ensure the Python environment is set up
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found"
    exit 1
fi

if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found"
    exit 1
fi

# Install dependencies
pip3 install -r requirements.txt

# Run collectstatic
python3 manage.py collectstatic --noinput

# Create the directory for static files if it does not exist
mkdir -p staticfiles_build

# Move collected static files to the build directory
mv static staticfiles_build/
