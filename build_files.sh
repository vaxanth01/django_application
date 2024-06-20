#!/bin/bash

# Ensure the correct Python environment is used
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput
