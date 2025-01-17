#!/bin/bash

# Function to send notifications
send_notification() {
    local title="$1"
    local message="$2"
    notify-send -u critical "$title" "$message"
}

# Main loop to monitor battery status
while true; do
    # Read battery level and charging status
    battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
    charging_status=$(cat /sys/class/power_supply/BAT0/status)

    # Check if the battery is discharging and at 20% or below
    if [[ "$charging_status" == "Discharging" && "$battery_level" -le 20 ]]; then
        send_notification "Battery Low" "Battery is at $battery_level%. Please connect the charger!"
    fi

    # Check if the battery is charging and has reached 90% or above
    if [[ "$charging_status" == "Charging" && "$battery_level" -ge 90 ]]; then
        send_notification "Battery Charged" "Battery is at $battery_level%. It's safe to unplug the charger."
    fi

    # Sleep for a minute before checking again
    sleep 60
done
