#!/bin/bash
# Runner script for YouTube Newsletter
# This script is called by launchd on a schedule

# Change to the project directory (exit if it fails) and ensure logs dir exists
cd "/path/to/youtube-to-ebook" && mkdir -p logs || exit 1

# Run the newsletter generator
# Note: If this fails with "ModuleNotFoundError", replace "python3" with your full Python path
# Find it by running: which python3
python3 main.py >> logs/newsletter.log 2>&1

# Add a timestamp to the log
echo "--- Completed at $(date) ---" >> logs/newsletter.log
