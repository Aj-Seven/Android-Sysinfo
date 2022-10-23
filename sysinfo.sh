#!/data/data/com.termux/files/usr/bin/bash
#Regular Color Variables
c_off='\033[0m' #No Color
black='\033[0;30m' #Black
red='\033[1;91m' #Red
green='\033[1;92m' #Green
yellow='\033[0;93m' #Yellow
blue='\033[0;94m' #Blue
purple='\033[0;95m' #Purple
cyan='\033[0;96m' #Cyan
white='\033[0;97m' #White
#BackGround Colors Variables
b_black='\033[40m'
b_red='\033[41m'
b_green='\033[42m'
b_yellow='\033[43m'
b_blue='\033[44m'
b_purple='\033[95m'
b_cyan='\033[46m'
b_white='\033[47m'

if [[ ! -f /data/data/com.termux/files/usr/bin/figlet ]]; then
    pkg install figlet -y
fi

command clear

function main() {
    echo -e "$blue"
    figlet -t -c -f term SYSTEM INFORMATION
    echo -e "$c_off"
    echo -e "$purple"
    figlet -c -t -f term "Github: https://github.com/Aj-Seven"
    echo -e "$c_off"
    echo -e "$yellow"
    figlet -t -c -f digital "Author: @Aj-Seven"
    echo -e "$c_off"
    echo -e "$white"
    echo -e $b_black
    echo -e "Select the options below:"
    echo -e "01) OS Info"
    echo -e "02) Disk Fetch"
    echo -e "03) CPU Info"
    echo -e "04) Memory Fetch"
    echo -e "05) System BaseInfo"
    echo -e "06) Network Stats"
    echo -e "07) Internet Speed"
    echo -e "00) Exit"
    echo -e "$c_off"
    read opt
    case $opt in
        01 | 1)
            OS
            ;;
        02 | 2)
            disk
            ;;
        03 | 3)
            cpu
            ;;
        04 | 4)
            memusage
            ;;
        05 | 5)
            sysbaseinfo
            ;;
        06 | 6)
            netstats
            ;;
        07 | 7)
            ispeed
            ;;
        00 | 0)
            echo -e $red "Exiting...:)$c_off"
            sleep 0.6s;
            exit 0;
            ;;
        *)
            echo -e "$cyan Error Selection...Try Again... $c_off"
            ;;

    esac
main
}

memusage() {
    echo -e $blue
    free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
    echo -e $c_off
}

cpu() {
    if [[ ! -f /data/data/com.termux/files/usr/bin/cpufetch ]]; then
        echo -e "$red CPUFetch Program Not Found... Installing $c_off"
        pkg install cpufetch -y
        echo "$green CPUFetch Program Installed... Executing $c_off"
        sleep 0.2s;
        command cpufetch
        echo -e $red
        top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
        echo -e $c_off
    else
        command cpufetch
        echo -e $red
        top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
        echo -e $c_off
    fi
}

disk() {
    echo -e "$blue"
    df -h | awk '$NF=="/storage/emulated"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
    echo -e "$c_off"

}
OS() {
    if [[ ! -f /data/data/com.termux/files/usr/bin/neofetch || ! -f /data/data/com.termux/files/usr/bin/pv ]]; then
        echo -e "$red Neofetch Package not Found... Installing $c_off"
        pkg install neofetch pv -y
        echo -e $green "Installed the Package... Executing $c_off"
        sleep 0.7s;
        command clear
        command neofetch --colors 3 4 5 2 1 | pv -qL 250
    else
        command neofetch --colors 3 4 5 2 1 | pv -qL 250
    fi
}

netstats () {
    hostname=$(hostname)
    echo -e "$cyan Host Name: $white $b_black $hostname $c_off"
    externalip=$(curl -s ifconfig.me)
    echo -e "$cyan External IP:$white $b_black $externalip $c_off"
    internalip=$(hostname -i)
    echo -e "$cyan Internal IP:$white $b_black $internalip $c_off"
    if ping -q -c2 google.com &>/dev/null;
    then
        echo -e "$cyan Network Connection:$black $b_green You are Up :) $c_off"

    else
        echo -e "$cyan Network Connection:$black $b_red Your are Down :( $c_off"
    fi
}

sysbaseinfo() {
    echo -e $b_black
    kn=$(uname -s)
    kv=$(uname -v)
    kr=$(uname -r)
    ka=$(uname -m)
    ko=$(uname -o)
    uptime=$(uptime -p)
    suptime=$(uptime -s)
    echo -e "$red Operating System: $c_off $blue $ko $c_off"
    echo -e "$red Kernel Name: $c_off $blue $kn $c_off"
    echo -e "$red Kernel Version: $c_off $blue $kr $c_off"
    echo -e "$red Kernel Release: $c_off $blue $kv $c_off"
    echo -e "$red System Architect: $c_off $blue $ka $c_off"
    echo -e "$red System Uptime: $c_off $blue $uptime $c_off"
    echo -e "$red System Since Boot: $c_off $blue $suptime $c_off"
    echo -e $c_off
}

ispeed() {
    if [[ ! -f /data/data/com.termux/files/usr/bin/speedtest-go ]]; then
        echo "$red Speedtest Program Not Installed... Installing $c_off"
        pkg install speedtest-go -y
        echo "$green Installed the Program... Executing:) $c_off"
        sleep 0.5s;
        echo -e "$green Plzz wait... This will take few minutes $c_off"
        echo -e $purple
        command speedtest-go
        echo -e $c_off
    else
        echo -e "$green Plzz wait... This will take few minutes $c_off"
        echo -e $purple
        command speedtest-go
        echo -e $c_off
    fi
}

main
