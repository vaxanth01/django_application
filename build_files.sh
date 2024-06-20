#!/bin/bash

# Install Python dependencies
pip install -r requirements.txt

# Apply Django migrations (if any)
python manage.py migrate --noinput

# Collect static files
python manage.py collectstatic --noinput
