<h1 align="center"> sysinfo.sh </h1>
<p align="center"> This is my Custom Utility of my Termux Favourite App :star_struck: </p>
<p align="center">
<a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<img src="https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white">
</p>

### Awesome Android-System Info.
<details>
<summary> <h4> Details [NEW] </h4> </summary>

- This Custom Utility Provides All Android Information in one Script. Like this Below :point_down:

> Fetches the OS and Architecture Info.

> Shows the CPU and Memory Info.

> Shows the Network Stats and Internet-Speed of the Device.

> Added the Options as Arguments, Now Able to Run the Specific Function of the Script.

> Added Battery Info Function.

</details>

![main](https://user-images.githubusercontent.com/89263112/227987239-5417a154-8b4a-4b2c-a30b-624883aeefb6.png)

## Installation sysinfo :white_check_mark:

<details>
<summary> <h3> Notice </h3> </summary>

- You have to install Latest Version Termux on F-Droid [here](https://f-droid.org/repo/com.termux_118.apk)

- And install termux-api latest version from F-Droid [here](https://f-droid.org/repo/com.termux.api_50.apk)

- If you Installed this script before Run this command below :point_down:

``` bash
rm $PREFIX/bin/sysinfo
```
</details>

#### Automatic Installation

:star2: using Curl

``` bash
curl https://raw.githubusercontent.com/Aj-Seven/Android-Sysinfo/master/sys-install.sh && bash sys-install.sh
```
- Now It will Install the Script with Required Dependencies...

> Now execute It

``` bash
sysinfo
```

----
## :camera_flash: Screenshots

- This screenshots were taken by [AwesomeShot](https://github.com/Awesomesh0t/awesomeshot)

<details open>
<summary> Show Case </summary>

<details>
<summary> OS Info </summary>

- Shows the OS info by the neofetch script:

``` bash
sysinfo os
```

- OR

```bash
sysinfo --os
```

</details>

![os](https://user-images.githubusercontent.com/89263112/224525853-4c061214-5d59-4f77-aa4f-c630ad42fce5.png)

<details>
<summary> Memory Info </summary>

- Fetches the Memory of the Android device

``` bash
sysinfo M
```

- OR
``` bash
sysinfo --mem
```

</details>

![memory](https://user-images.githubusercontent.com/89263112/224524188-a90091ac-768c-4057-a07e-d3e3c3855cf7.png)

<details>
<summary> CPU Info </summary>

- Shows the CPU Information of the Android Device.

``` bash
sysinfo C
```

- OR

``` bash
sysinfo --cpu
```

</details>

![cpu](https://user-images.githubusercontent.com/89263112/224524181-4d831f63-d73b-4314-a778-07e32ccc888e.png)


<details>
<summary> System base Info </summary>

- Shows the System Architecture and Kernel Info.

``` bash
sysinfo s
```

- OR

``` bash
sysinfo --sysbinfo
```

</details>

![sysbinfo](https://user-images.githubusercontent.com/89263112/224524252-e6cfae74-c18c-470f-983b-00afe9685760.png)

<details>
<summary> Network Info </summary>

- Shows the IP Information and Internet Connection.

``` bash
sysinfo N
```

- OR

``` bash
sysinfo --netstat
```

</details>

![internet](https://user-images.githubusercontent.com/89263112/224524202-0580856c-0e2e-43c6-afb5-13f6ec12d868.png)

<details>
<summary> Speed Test Info </summary>

- Shows the Device Internet Speed and Latency.

``` bash
sysinfo S
```
- OR

``` bash
sysinfo --speed
```
</details>

![speedtest](https://user-images.githubusercontent.com/89263112/224524239-7b99aaee-73f4-43f1-b5f9-cf73e9def621.png)

<details>
<summary> Battery Stat </summary>

- Shows the Device Battery stats with live Mode.

``` bash
sysinfo B
```

- OR

``` bash
sysinfo --battery
```
</details>

![battery](https://user-images.githubusercontent.com/89263112/227990012-4cf1a824-0ac8-459f-a4a9-eee76b4f890b.png)

</details>

----

### To Remove the Script

``` bash
rm $PREFIX/bin/sysinfo
```
## Credits

- [Awesomeshot](https://github.com/Awesomesh0t/awesomeshot.git) For Awesome screenshot Images.

- [myTermux](https://github.com/mayTermux/myTermux.git) For Custom Shell,Themes and Config of termux.
