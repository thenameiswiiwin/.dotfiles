# Auto Import Rectangle
#!/bin/bash

# Specify the path to your RectangleConfig.json file
config_file="/path/to/RectangeConfig.json"

# Check if Rectangle is installed
if ! command -v rectangle >/dev/null 2>&1; then
	echo "Rectangle is not installed. Please install Rectangle first."
	exit 1
fi

# Check if the configuration file exists
if [ ! -f "$config_file" ]; then
	echo "RectangleConfig.json file not found. Please provide the correct path."
	exit 1
fi

# Import the configuration
rectangle config import "$config_file"

echo "Rectangle configuration imported successfully."
exit 0
