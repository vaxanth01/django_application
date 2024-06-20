#!/bin/bash

# Function to find the correct python executable
find_python() {
    if command -v python3 &> /dev/null
    then
        echo "python3"
    elif command -v python &> /dev/null
    then
        echo "python"
    else
        echo "Python is not installed" >&2
        exit 1
    fi
}

# Get the correct python executable
PYTHON=$(find_python)

# Debugging information
echo "Using Python executable: $PYTHON"
$PYTHON --version

# Ensure the correct Python environment is used
$PYTHON -m pip install --upgrade pip
$PYTHON -m pip install -r requirements.txt

# Collect static files
$PYTHON manage.py collectstatic --noinput
