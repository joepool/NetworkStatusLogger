#!/bin/bash
apt install apache2 -y
apt install php libapache2-mod-php -y
chown pi:/var/www/html/index.html
rm /var/www/html/index.html
cp /home/pi/NetworkStatusLogger/index.php /var/www/html.index.php
cp /home/pi/NetworkStatusLogger/NetworkStatusLogger.service /etc/systemd/system/NetworkStatusLogger.service
systemctl enable NetworkStatusLogger.service
reboot