#!/bin/bash
cp /home/pi/NetworkStatusLogger/NetworkStatusLogger.service /etc/systemd/system/NetworkStatusLogger.service
systemctl enable NetworkStatusLogger.service
reboot
