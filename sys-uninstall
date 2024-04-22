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

uninstall_script() {
REPO_URL="https://github.com/Aj-Seven/Android-Sysinfo"
REPO_DIR="$PREFIX/share/Android-Sysinfo"
SCRIPT_NAME="sysinfo"
BIN_DIR="$PREFIX/bin"
SCRIPT_PATH="$BIN_DIR/$SCRIPT_NAME"

   
if [[ (-L $SCRIPT_PATH ) && (-d $REPO_DIR ) ]]; then
      echo -e "$red Deleting files... $off"
      rm -rf $SCRIPT_PATH $REPO_DIR; true;
fi 


if [ ! -d "$REPO_DIR" ]; then
        echo -e "$red Repository directory Deleted Successfully.$off"
        if [ ! -f "$SCRIPT_PATH" ]; then
           echo -e "$red Script UnInstalled Successfully..$off"
        else
            echo -e "$red Script not un-installed :) $off"
        fi
else
        echo -e "$red Failed to delete repository directory $off"
fi
}

clear
echo -e "$yellow Name:$off$white sysinfo uninstaller$off"
echo -e "$yellow Version:$off$white V2.0$off"
echo -e "$white Do you want to un-install the sysinfo script?(Y/N)$off"
read select
case $select in
    Y|y) uninstall_script
    ;;
    N|n) exit 1
    ;;
    *) echo -e "$yellow INFO:$off $white Error Selection...$off"
    ;;
esac
