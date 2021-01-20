#!/bin/bash

# Create screen "minecraft"
screen -dmS minecraft

# Start the server in that screen
screen -S minecraft -X stuff '/usr/bin/java -Xmx1G -jar /var/minecraft/server/server.jar nogui\n'
