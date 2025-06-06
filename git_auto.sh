#!/bin/bash

# Default commit message
DEFAULT_MESSAGE="Updated files and folders"

# Ask the user for a custom commit message
echo "Enter commit message (leave blank to use default):"
read COMMIT_MESSAGE

# Use the default message if the user doesn't provide one
if [ -z "$COMMIT_MESSAGE" ]; then
    COMMIT_MESSAGE=$DEFAULT_MESSAGE
fi

# Add all changes to staging
git add .

# Commit with the specified or default message
git commit -m "$COMMIT_MESSAGE"

# Push to the main branch
git push origin main
