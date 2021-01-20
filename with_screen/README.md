# Usage
1. Use the files provided in the "with_screen" directory of this repository.
1. Write the minecraft.service file in /etc/systemd/system/
1. Write the start-server.sh script in /var/minecraft/server/
1. Run `systemctl daemon-reload`
1. Use normal systemd commands to start/stop/enable the minecraft server. (https://wiki.ubuntuusers.de/systemd/systemctl/)

## Connecting to server console
1. Switch to user "minecraft" (`sudo su minecraft`)
1. Run `screen -r minecraft`
1. Disconnect using `ctrl + a` followed by `d` (https://wiki.ubuntuusers.de/Screen/)