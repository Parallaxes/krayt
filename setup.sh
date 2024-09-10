#!/bin/bash

# Function to install dependencies
install_dependencies() {
    echo "Installing dependencies..."
    pip install -r requirements.txt
}

# Function to add krayt to PATH
add_to_path() {
    echo "Adding krayt to system PATH..."
    sudo ln -s "$(pwd)/krayt.py" /usr/local/bin/krayt
    echo "krayt has been added to your PATH. You can now use the 'krayt' command."
}

# Install dependencies
install_dependencies

# Prompt for approval to add krayt to PATH
read -p "Do you want to add 'krayt' to your system PATH? (y/n): " choice
case "$choice" in 
  y|Y ) add_to_path;;
  n|N ) echo "You chose not to add 'krayt' to the PATH. You can still run it using 'python3 krayt.py'.";;
  * ) echo "Invalid choice. Please run the script again and choose y or n.";;
esac