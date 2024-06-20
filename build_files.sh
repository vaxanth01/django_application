#!/bin/bash
pip3 install -r requirements.txt

python3.11 manage.py collectstatic
pip install django