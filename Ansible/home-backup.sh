#!/bin/bash

FILE=/root/backups
NOW=$(date +"%H-%M_%m-%d-%Y")
if [ -d "$FILE" ]; then
        sudo tar -cvf /root/backups/home-backup-wave-$NOW.zip /home/wave/
else

        sudo mkdir /root/backups
        sudo tar -cvf /root/backups/home-backup-wave-$NOW.zip /home/wave/
fi

