#!/bin/bash

SERVER_JAR=paper.jar
RAM=3072

if [ "$1" == "--update" ]; then
    echo "Pulling latest server jar..."
    wget -q -O $SERVER_JAR https://papermc.io/api/v1/paper/1.15.2/latest/download
fi

chmod 755 $SERVER_JAR
java -Xmx${RAM}M -Xms${RAM}M -jar $SERVER_JAR
