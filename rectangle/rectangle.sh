#!/bin/bash

# Auto Import Rectangle Configuration Script

# Specify the path to your RectangleConfig.json file
config_file="$HOME/RectangleConfig.json" # Update this to the actual path if necessary

# Function to print error messages and exit
function error_exit {
	echo "Error: $1"
	exit 1
}

# Check if Rectangle is installed
if ! command -v rectangle >/dev/null 2>&1; then
	error_exit "Rectangle is not installed. Please install Rectangle first."
fi

# Check if the configuration file exists
if [ ! -f "$config_file" ]; then
	error_exit "RectangleConfig.json file not found at '$config_file'. Please provide the correct path."
fi

# Import the configuration
if rectangle config import "$config_file"; then
	echo "Rectangle configuration imported successfully."
else
	error_exit "Failed to import Rectangle configuration."
fi

exit 0
