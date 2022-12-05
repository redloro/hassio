# Home Assistant Add-Ons

## ser2net Add-On

[Hass.io add-on](https://home-assistant.io/addons/) to use [ser2net](https://linux.die.net/man/8/ser2net) in [Home Assistant](https://home-assistant.io).

### Description

Proxy tcp connections to serial ports in Home Assistant.

### Usage

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
