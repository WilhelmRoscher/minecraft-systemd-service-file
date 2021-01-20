# minecraft-systemd-service-file
Systemd service file to start/stop/enable a minecraft server. If you want to connect to the server console later, use the "with screen" solution.

## Prerequisites
* user "minecraft"
  * member of group "minecraft" (`groupadd -r minecraft`)
  * home at /var/minecraft/ (`useradd -r -g minecraft -d "/var/minecraft" -s "/bin/bash" minecraft`)
  * ownes /var/minecraft/server (`chown minecraft.minecraft -R /var/minecraft/`)
* server.jar at /var/minecraft/server/server.jar

## Usage Without Screen
1. Write the minecraft.service file in /etc/systemd/system/
2. Run `systemctl daemon-reload`
3. Use normal systemd commands to start/stop/enable the minecraft server. (https://wiki.ubuntuusers.de/systemd/systemctl/)

## Usage With Screen
1. Use the files provided in the "with_screen" directory of this repository.
2. Write the minecraft.service file in /etc/systemd/system/
3. Write the start-server.sh script in /var/minecraft/server/
4. Use normal systemd commands to start/stop/enable the minecraft server. (https://wiki.ubuntuusers.de/systemd/systemctl/)

### Connecting to server console
1. Swith to user "minecraft" (`sudo su minecraft`)
2. Run `screen -r minecraft`
3. Disconnect using `ctrl + a` followed by `d` (https://wiki.ubuntuusers.de/Screen/)
