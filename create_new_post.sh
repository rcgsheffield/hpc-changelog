#!/bin/bash

# Get current date in ISO format
DATE=$(date --iso)

# Ask user for title input
read -p "Enter the title: " TITLE

# Ask user to choose a category
echo "Choose a category:"
PS3="Select a category: "
select CATEGORY in "New" "Bug" "Update" "Improvement"; do
  if [[ -n "$CATEGORY" ]]; then
    echo "Category selected: $CATEGORY"
    break
  else
    echo "Invalid option. Please try again."
  fi
done

# Ask user to choose a cluster
echo "Choose a cluster:"
PS3="Select a cluster: "
select CLUSTER in "Bessemer" "Stanage" "None"; do
  if [[ -n "$CLUSTER" ]]; then
    if [[ "$CLUSTER" == "None" ]]; then
      CLUSTER=""
    fi
    echo "Cluster selected: $CLUSTER"
    break
  else
    echo "Invalid option. Please try again."
  fi
done

# Ask user if it's a maintenance post
read -p "Is this a maintenance post? (y/n): " MAINTENANCE
if [[ "$MAINTENANCE" == "y" ]]; then
  TAGS="maintenance"
else
  TAGS=""
fi

# Ask for additional tags
read -p "Enter any custom tags (comma-separated), or leave blank: " CUSTOM_TAGS
if [[ -n "$CUSTOM_TAGS" ]]; then
  if [[ -n "$TAGS" ]]; then
    TAGS="$TAGS, $CUSTOM_TAGS"
  else
    TAGS="$CUSTOM_TAGS"
  fi
fi

# Define the filename
FILENAME="_posts/$DATE-$(echo $TITLE | tr ' ' '-').md"

# Create the post content
cat > "$FILENAME" << EOL
---
title:  "$TITLE"
category:  "$CATEGORY"
tags: $CLUSTER $TAGS
---
EOL

# Inform the user
echo "Post created: $FILENAME"
