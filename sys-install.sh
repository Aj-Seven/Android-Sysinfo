#!/data/data/com.termux/files/usr/bin/bash

#Author: Abdul Jaber(Aj-Seven)
#Github: @Aj-Seven
#Reddit: @A_J07

red='\033[1;91m'
green='\033[1;92m'
off='\033[0;0m'
cyan='\033[1;96m'
yellow='\033[1;33m'
white='\033[1;97m'

echo -e "$white Installing Required Dependencies. Please wait... :) $off"

# Function to install package and show message
install_package() {
    local package_name="$1"
    if ! command -v "$package_name" >/dev/null 2>&1; then
        echo -e "$cyan (Installing $package_name...) $off"
        if apt install -y "$package_name" >/dev/null 2>&1; then
            echo -e "$green Installed $package_name successfully $off"
        else
            echo -e "$red Failed to install $package_name $off"
        fi
    else
        echo -e "$green $package_name is already installed $off"
    fi
}


install_script() {
    REPO_URL="https://github.com/Aj-Seven/Android-Sysinfo"
    REPO_DIR="$PREFIX/share/Android-Sysinfo"
    SCRIPT_NAME="sysinfo"
    BIN_DIR="$PREFIX/bin"
    SCRIPT_PATH="$BIN_DIR/$SCRIPT_NAME"

   
    if [[ (-L $SCRIPT_PATH ) && (-d $REPO_DIR ) ]]; then
            echo -e "$red Deleting files from previous installation... $off"
            rm -rf $SCRIPT_PATH $REPO_DIR; true;
    fi 

    # Clone the repository directory
    echo -e "$cyan Cloning repository directory... $off"
    git clone -b test "$REPO_URL" "$REPO_DIR" > /dev/null 2>&1
    #link script to bin directory
    echo -e "$yellow Creating symbolic link to the script in the bin directory... $off"
    ln -s "$REPO_DIR/$SCRIPT_NAME" "$SCRIPT_PATH"
    echo -e "$green Script linked Successfully... $off"
            
    # Check if the repository directory was successfully cloned
    if [ -d "$REPO_DIR" ]; then
        echo -e "$green Repository directory cloned Successfully... $off"
        # Check if the script file exists in the repository directory
        if [ -f "$SCRIPT_PATH" ]; then
            # Create a symbolic link to the script in the bin directory
           echo -e "$green Script Installed Successfully, Run it by sysinfo $off"
        else
            echo -e "$red Script not Installed :( $off"
        fi
    else
        echo -e "$red Failed to clone repository directory $off"
    fi
}

# Function to check if tput exists under ncurses-utils package
check_tput() {
    if ! command -v tput &> /dev/null; then
        install_package ncurses-utils
    fi
}

# Check if tput exists under ncurses-utils package...
check_tput

# Install curl package...
install_package curl

# Install figlet package...
install_package figlet

# Install bc package...
install_package bc

# Install jq package...
install_package jq


# Set the default PREFIX if not provided
if [ -z "$PREFIX" ]; then
    PREFIX="/data/data/com.termux/files/usr/"
fi

# Execute the install_script function
install_script
