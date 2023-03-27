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


#main function
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
}

#memory usage function
memusage() {
    BUFFCACHE_MEM=$(free -m | awk '/Mem/ {print $6}')
    FREE_BUFF_MEM=$(free -m | awk '/Mem/ {print $4}')
    AVAILABLE_MEM=$(free -m | awk '/Mem/ {print $7}')
    TOTAL_MEM=$(free -m | awk '/Mem/ {print $2}')
    TOTAL_USED_MEM=$(( $TOTAL_MEM - $AVAILABLE_MEM ))
    PERCENT_USED_MEM=$(free -m | awk 'NR==2{printf "%.2f%%\n", $3*100/$2 }')
    echo -e "$cyan Total Memory\t\t:$red $TOTAL_MEM $c_off MB"
    echo -e "$cyan Used Memory\t\t:$red $TOTAL_USED_MEM $c_off MB"
    echo -e "$cyan Available Memory\t:$red $AVAILABLE_MEM $c_off MB"
    echo -e "$cyan Buffer+Cache Memory\t:$red $BUFFCACHE_MEM $c_off MB"
    echo -e "$cyan Free Buff+Cache Memory\t:$red $FREE_BUFF_MEM $c_off MB"
    echo -e "$cyan Memory Percentage Usage:$red $PERCENT_USED_MEM $c_off"
    echo -e $c_off
}

#CPU Information
cpu() {
        command cpufetch --color 239,90,45:210,200,200:0,0,0:100,200,45:0,200,200
        echo -e $red
        top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
        echo -e $c_off
}

#Disk Usage
disk() {
    echo -e "$blue"
    df -h | awk '$NF=="/storage/emulated"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
    echo -e "$c_off"

}

#OS info By Neofetch
OS() {
        command neofetch --colors 3 4 5 2 1 | pv -qL 350
}


#Network Information
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


#System Base Information like kernel uptime
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


#Network Speed Checker
ispeed() {
        echo -e "$green Plzz wait... This will take few minutes $c_off"
        echo -e $purple
        command speedtest-go
        echo -e $c_off
}

#Help Function while how to use the Argument
#Based running the Script
_help() {
    echo -e "$b_black"
    echo -e "Usage: Options.";
    echo -e "--os|os - OS Info By Neofetch."
    echo -e "--disk|D - Shows the disk Usage."
    echo -e "--cpu|C - CPU INFORMATION."
    echo -e "--mem|M - Shows the Memory usage."
    echo -e "--sysbinfo|s - Shows About Device Info."
    echo -e "--netstat|N - Shows About NetWork Stats."
    echo -e "--speed|S - Shows the Internet Speed."
    echo -e "--help|h - Shows this Help Info."
    echo -e "$red ***If Don't know how to do You can Directly run the Script without passing any Options***"
    echo -e "$c_off"
}

if [ $# -eq 0 ]; then
       command clear
    while true; do
        main
    done
fi

while [[ "$#" -gt 0 ]]; do
    case $1 in
        os|--os) OS;;
        D|--disk) disk;;
        C|--cpu) cpu;;
        M|--mem) memusage;;
        s|--sysbinfo) sysbaseinfo;;
        N|--netstat) netstats;;
        S|--speed) ispeed;;
        *) echo "Unknown Option: $1";
            _help
            exit 1;;
    esac
    shift
done

