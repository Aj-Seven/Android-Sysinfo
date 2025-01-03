<h1 align="center"> sysinfo </h1>
<p align="center"> Displays various info about Android on Termux app that written in BASH </p>
<p align="center">
<a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<img src="https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white">
<a href='#'><img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></img><a/>
</p>
<p align="center">
<a href='#'><IMG
src=https://api.visitorbadge.io/api/VisitorHit?user=Aj-Seven&repo=github-visitors-badge></img></a>
<a href='#'><img src=https://img.shields.io/badge/Maintained%3F-yes-green.svg></img><a/>
</p>

![MainMenu](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/bd979abf-fd24-44f7-8665-2fae90b27a08)

## :star: Features

- Enhanced menu design to improve information visibility.
- Enhanced command mode for executing specific functions.
- Precise system load calculation using ADB HACK.
- Memory and CPU functions optimized for better performance.
- Continuous monitoring of CPU, memory, and battery in real-time.
- sysinfo can now receive future updates.
- Header menu shows updates, termux-api and ADB status.
- Now device sensors list will display.

## Installation :white_check_mark:

> **Attention!**
> - You have to install latest version of Termux from F-Droid **[here](https://f-droid.org/repo/com.termux_118.apk)**
> - Install termux-api latest version from F-Droid **[here](https://f-droid.org/repo/com.termux.api_51.apk)**

#### Automatic Installation

:star2: using curl
- Install curl pkg
``` bash
pkg install -y curl
```
- Run one line command to setup the script installation.
- Installation depends on Internet speed.
``` bash
bash <(curl -s https://raw.githubusercontent.com/Aj-Seven/Android-Sysinfo/master/sys-install)
```
- It will install the script with required dependencies.

> *After Successful Installation, execute it by*
``` bash
sysinfo
```

<details closed>
<summary>
<h4> Manual way </h4>
</summary>

- Download or clone this Repository

``` bash
git clone https://github.com/Aj-Seven/Android-Sysinfo
```

- move this repo folder to `usr/share` directory

``` bash
mv Android-Sysinfo $PREFIX/share/Android-Sysinfo
```

- link the script to bin directory

``` bash
ln -s $PREFIX/share/Android-Sysinfo/sysinfo $PREFIX/bin/sysinfo
```

**Make sure that required dependencies is installed before running**
<details closed>
<summary> required pkgs </summary>

- Install required pkgs by
`pkg install -y git curl termux-api ncurses-utils duf figlet bc jq nmap speedtest-go`
</details>

> *Thats it, sysinfo is Successfully Installed :tada:*

- Run by `sysinfo`


</details>

## ADB Connection :zap:

- To use ADB connection in the script, you need to activate remote TCP by running:
``` bash
adb tcpip 5555
```
- This command opens a TCP connection that stays active until your phone restarts.
- You can check the ADB status in the header menu.

<details open>
<summary>
<h2> Showcase </h2>
</summary>

> This screenshots were taken by [AwesomeShot](https://github.com/Awesomesh0t/awesomeshot)

- **Android Info**
``` bash
sysinfo android
```
![android_info](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/66e31f13-083c-4ee6-b232-688ebb8e5b87)

- **Disk Fetch**
``` bash
sysinfo disk
```
![disk_fs](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/68482455-d053-40b2-8265-d538d031e948)

> **Disk Fetch (all)**
![disk_all](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/8235a692-e0a2-4fa4-bd42-7966386db8b6)

- **CPU Info**
``` bash
sysinfo cpu
```
![cpu_details](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/07b37745-3a46-432e-af86-5ae153428b58)

> **Monitoring**
![cpu_monitoring](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/d5d19497-a105-4cb6-9792-d1ec863fbbbd)

- **Memory Fetch**
``` bash
sysinfo memory
```
![memory_details](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/1d33d559-d019-4288-9f6f-9d06dc48f870)

> **Monitoring**
![memory_monitoring](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/b700207a-7005-45cc-8813-42fdf1be06ed)

- **System Baseinfo**
``` bash
sysinfo sysbinfo
```
![android_base_info](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/a5b9afc8-9b4e-4271-9c7c-39b1cdccbf52)

- **Network Stats**
``` bash
sysinfo netstats
```
![netstats](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/99a7572c-e3c6-4ffd-86da-bd29ec0e3bfd)
> **Cellular Info**
``` bash
sysinfo netstats --cellular
```
![netstats_cellular](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/e7f778f0-97a9-466f-bc50-737b936b9358)
> **WiFi Info**
``` bash
sysinfo netstats --wifi
```
![netstats_wifi](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/a75d0883-7ff2-4c38-abe6-50c27849458f)
- **Internet Speed**
``` bash
sysinfo speed
```
![speedtest](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/8a6a7aaf-4804-43b9-99fb-c79bfdc8f048)

- **Battery Statistics**
``` bash
sysinfo Battery
```
![battery_stats](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/abb9cc97-b4d9-4d4a-a75e-bfdcdd9e9ef9)

> **Battery Monitoring**
![battery_monitoring](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/18e0a5f2-690b-4d05-88ee-e1dd2bb6b9a3)

- **Update view**
![update](https://github.com/Aj-Seven/Android-Sysinfo/assets/89263112/56920f44-f78d-4a37-9cc9-ae78604999f9)

- **Sensors Info**
``` bash
sysinfo sensor
```
![sensors](https://github.com/user-attachments/assets/490c60d2-9ed2-4321-93e6-2dabd71a3992)
</details>

## Note
- Some information may not be visible in certain functions because I only use a specific fetching method on one device.
- Your contributions could enhance this script by providing even more detailed information about Android System.

## Uninstallation

``` bash
bash <(curl -s https://raw.githubusercontent.com/Aj-Seven/Android-Sysinfo/master/sys-uninstall)
```

## Contribution
Contributions are welcome! Feel free to fork the repository, make your changes and submit a pull request with relevant message of update or changes.

## Credits

- [Awesomeshot](https://github.com/Awesomesh0t/awesomeshot.git) For Awesome screenshot Images.

- [myTermux](https://github.com/mayTermux/myTermux.git) For Custom shell,themes and config of termux.

- [duf](https://github.com/muesli/duf) For Disk Usage.
