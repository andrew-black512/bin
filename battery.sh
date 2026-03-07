#!/bin/bash

# 1. Define the function
  battery_info=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

  # Using perl-compatible regex (grep -P) is correct for \K
  time_to_full=$(echo "$battery_info" | grep -oP 'time to full:\s*\K.*')
  percentage=$(echo "$battery_info" | grep -oP 'percentage:\s*\K.*')
  state=$(echo "$battery_info" | grep -oP 'state:\s*\K.*')

  echo "Time to full: ${time_to_full:-N/A}"
  echo "Percentage: $percentage"
  echo "State: $state"

# 3. Use the function directly in the alias
#alias bat_info="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
#alias bat_info_w="watch -n 1 bash -c get_battery_info"
