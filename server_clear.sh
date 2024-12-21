#!/bin/bash

# Set the script to exit immediately if any command fails
set -e

echo "Starting server_clear.sh script..."

# Stop the application service (adjust for your specific service)
echo "Stopping application service..."
sudo systemctl stop my-application.service

# Clear application cache (adjust path if necessary)
echo "Clearing application cache..."
sudo rm -rf /var/cache/my-application/*

# Clean up old logs (adjust path if necessary)
echo "Cleaning up old logs..."
sudo find /var/log/my-application/ -name "*.log" -exec rm -f {} \;

# Optionally, clear temporary files
echo "Clearing temporary files..."
sudo rm -rf /tmp/*

# Notify completion
echo "Server cleanup completed successfully."

# End of script
