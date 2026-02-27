#!/bin/bash

function get_battery_info() {
  battery_info=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

  time_to_full=$(echo "$battery_info" | grep -oP 'time to full:\s*\K.*')
  percentage=$(echo "$battery_info" | grep -oP 'percentage:\s*\K.*')
  state=$(echo "$battery_info" | grep -oP 'state:\s*\K.*')

  echo "Time to full: $time_to_full"
  echo "Percentage: $percentage"
  echo "State: $state"
}
alias bat_info="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias bat_info_w="watch get_battery_info"
get_battery_info
