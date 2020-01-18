# minecraft-systemd-service-file
systemd service file to start/stop/enable a minecraft server

## Prerequisites
* user "minecraft"
  * member of group "minecraft" (groupadd -r minecraft)
  * home at /var/minecraft/ (useradd -r -g minecraft -d "/var/minecraft" -s "/bin/bash" minecraft)
  * ownes /var/minecraft/server (chown minecraft.minecraft -R /var/minecraft/)
* server.jar at /var/minecraft/server/server.jar
