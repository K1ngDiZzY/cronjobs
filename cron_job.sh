# cron job to update your linux machine and then send a message in discord to let you know it has completed the update
0 3 * * * sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y > /home/pi/update.log 2>&1 && curl -H "Content-Type: application/json" -X POST -d '{"content":"Raspberry Pi has been updated successfully!"}' YOUR_WEBHOOK_URL


#!/bin/bash

# Update the system
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y

# Send a Discord message
WEBHOOK_URL="YOUR_WEBHOOK_URL"
curl -H "Content-Type: application/json" -X POST -d '{"content":"Raspberry Pi has been updated successfully!"}' "$WEBHOOK_URL"
