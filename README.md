Alarm Clock v1.0

A simple Bash script to schedule and trigger alarms using the system’s built-in at command.

Overview

alarm_clock.sh is a beginner-friendly Bash project that allows users to set alarms for specific times in 24-hour format (HH:MM). It demonstrates essential scripting concepts such as input validation, command scheduling, and basic menu-driven interaction.

The script helps you understand how Linux handles delayed execution and scheduling through the at command.

Features

Sets alarms using 24-hour time format (HH:MM)

Validates input to ensure correct time format

Uses the at command to schedule alarm notifications

Displays operation status and exit codes for debugging or learning

Simple interactive menu for repeated use


Files

alarm_clock.sh     # Main script
README.md          # Project information and usage guide

How to Run

1. Give execute permission:

chmod +x alarm_clock.sh


2. Run the script:

./alarm_clock.sh


3. Choose an option from the menu:

1) Set Alarm — prompts you for time in HH:MM format

2) Exit — quits the program




If you want to test without waiting for real time, you can set an alarm a minute ahead of your current system time.

Requirements

Linux system with Bash
Author

Aditya Dwivedi |
Bash Scripter
