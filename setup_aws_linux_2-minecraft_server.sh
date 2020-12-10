#!bin/bash

sudo yum install java-1.8.0-openjdk

sudo mkdir MinecraftServer
cd MinecraftServer
aws s3 cp s3://minecraft-server-aws/setup/server.jar ./
sudo java -Xms1G -jar server.jar nogui
sudo rm eula.txt
echo eula=true > eula.txt
sudo java -Xms1G -jar server.jar nogui

