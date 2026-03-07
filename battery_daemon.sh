#!/bin/bash

# Configuration
BAT_PATH="/org/freedesktop/UPower/devices/battery_BAT0"
CHECK_INTERVAL=60 # Check every minute to save CPU
LOW=90
while true; do
    # Get current stats
    battery_info=$(upower -i $BAT_PATH)
    percentage=$(echo "$battery_info" | grep -oP 'percentage:\s*\K[0-9]+')
    state=$(echo "$battery_info" | grep -oP 'state:\s*\K.*')

    # Logic for notifications
    echo $percentage
    if [[ "$state" == "discharging" ]] && [ "$percentage" -le 98 ]; then
        notify-send -u critical "Battery Low" "Level: ${percentage}% - Please plug in!"
        # Sleep longer after notifying so it doesn't nag every minute
        sleep 300 
    elif [[ "$state" == "fully-charged" ]] || [[ "$state" == "charging" && "$percentage" -ge 99 ]]; then
        notify-send -u normal "Battery Full" "Level: ${percentage}% - You can unplug now."
        sleep 600
    fi

    sleep $CHECK_INTERVAL
done
