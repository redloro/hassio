# Home Assistant Add-on: ser2net

[Home Assistant Add-on](https://home-assistant.io/addons/) to support [ser2net](https://linux.die.net/man/8/ser2net).

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg

## Description

Proxy tcp connections to serial ports in Home Assistant.

## Usage

Add-on automatically makes ports 3330-3339 available to map to available serial ports.

Specify port mapping by adding your own command strings:
```
- 3330:telnet:0:/dev/ttyUSB0:19200 8DATABITS NONE 1STOPBIT
- 3331:telnet:0:/dev/ttyUSB1:19200 8DATABITS NONE 1STOPBIT
```

The syntax and options of the command string can be found in the [ser2net](https://linux.die.net/man/8/ser2net) man page and follow the ser2net configuration line format:
```
<TCP port>:<state>:<timeout>:<device>:<options>
```
