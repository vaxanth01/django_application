#!/bin/bash
pip install -r requirements.txt

python3.11 manage.py collectstatic
pip install django