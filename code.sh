#!/bin/bash

set_alarm() {
    read -p "Enter alarm time (HH:MM, 24-hour): " alarm_time

    # Check basic format: two digits, colon, two digits
    if ! [[ "$alarm_time" =~ ^[0-9]{2}:[0-9]{2}$ ]]; then
        echo "invalid time format"
        return 1
    fi

    echo "Alarm set for $alarm_time"
    echo 'echo "Alarm! It is now time!"' | at "$alarm_time"

    if [ $? -eq 0 ]; then
        echo "Alarm scheduled successfully."
        return 0
    else
        echo "Failed to schedule alarm."
        return 2
    fi
}

while true; do
    echo "1) Set Alarm"
    echo "2) Exit"
    read -p "Choose an option: " choice

    case $choice in
        1)
            set_alarm
            echo "Exit status of set_alarm: $?"
            ;;
        2)
            echo "Program ended."
            break
            ;;
        *)
            echo "invalid option"
            ;;
    esac
done