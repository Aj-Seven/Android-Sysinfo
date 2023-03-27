#!$PREFIX/bin/bash
red='\033[1;91m'
green='\033[1;92m'
off='\033[0;0m'
cyan='\033[1;96m'
b_black='\033[40m'
white='\033[1;97m'

echo -e $b_black $white
echo -e "$red Installing Required Dependecies. plzz wait...:) $off"

#install curl pkg...
curl --version
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing Curl...) $pff"
    apt install -y curl
fi

#install figlet pkg...
figlet -v
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing figlet...) $off"
    apt install -y figlet
fi

#install pv pkg...
pv --version
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing pv...) $off"
    apt install -y pv
fi

#check neofetch program...
if [ ! -f $PREFIX/bin/neofetch ] || [ ! -f $HOME/.local/bin/neofetch ]; then
    echo -e "$cyan (Installing neofetch...) $off"
    apt install -y neofetch
fi

#install cpufetch pkg...
cpufetch --version
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing cpufetch...) $off"
    apt install -y cpufetch
fi

#install speedtest-go pkg...
speedtest-go --version
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing speedtest-go...) $off"
    apt install -y speedtest-go
fi

#install python && pip pkg's...
python --version
pip --version
status=$?
if [ "$status" != 0 ]; then
    echo -e "$cyan (Installing python...)"
    apt install -y python
    pip install jtbl
fi

#install termux-api pkg...
apt install -y termux-api

#remove the script of old version
if [ -f $PREFIX/bin/sysinfo ]; then
    rm $PREFIX/bin/sysinfo
fi

#Install sysinfo script by curl
curl https://raw.githubusercontent.com/Aj-Seven/Android-Sysinfo/master/sysinfo >$PREFIX/bin/sysinfo

#giving executable permission to sysinfo script
chmod +x $PREFIX/bin/sysinfo
echo -e "$green Installed the sysinfo Script $off"

sleep 0.5
echo -e "$green (Now Run the script by sysinfo...) $off"
echo -e $off
rm sys-install.sh
