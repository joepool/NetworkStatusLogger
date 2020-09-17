#!/bin/bash
cp /home/pi/NetworkStatusLogger/NetworkStatusLogger.service /etc/systemd/system/NetworkStatusLogger.service
systemctl enable NetworkStatusLogger.service
echo Your Pi will now reboot...
sleep 5
reboot
