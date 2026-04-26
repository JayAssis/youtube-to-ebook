#!/bin/bash
# Runner script for YouTube Newsletter
# This script is called by launchd on a schedule

# Change to the project directory
cd /path/to/youtube-to-ebook

# Run the newsletter generator
# Note: If this fails with "ModuleNotFoundError", replace "python3" with your full Python path
# Find it by running: which python3
python3 /path/to/youtube-to-ebook/main.py >> /path/to/youtube-to-ebook/logs/newsletter.log 2>&1

# Add a timestamp to the log
echo "--- Completed at $(date) ---" >> /path/to/youtube-to-ebook/logs/newsletter.log
