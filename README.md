# NetworkStatusLogger
This is a simple shell script that monitors your network and logs when your internet connection drpos out .  
I created this as I was having issues with my network and wanted to monitor when and for how long there were issues with my network.   
I am running this on a raspberry pi, but i can be used on any device that can run shell scripts and is connected to the internet.  
## Setup
Clone this Repository:  
`git clone https://github.com/joepool/NetworkStatusLogger.git`  
#### Raspberry Pi
If your user is not pi (or you would like to change the `networkstatuslog.txt` save location) edit line two of `NetworkStatusLogger.sh`  
Run the setup shell script:  
`sudo ./setup.sh`  
Your Raspberry Pi will reboot and the script will then always be running in the background.  
The setup will fail if it is not run with sudo.  
If you also would like a webpage to display the network log, alternatively run the `setup_inc_web.sh` script:   
`sudo ./setup_inc_web.sh`   
Again, this will fail if not run with sudo.   
Once rebooted the script will be running in the background and the webpage will be avaliable at the IP address of your Pi.   
If you don't know the IP it can be found using the command `hostname -I`    
The clear logs option on the webpage will only work if the log file is in the default location (`/home/pi/networkstatuslog.txt`)    
#### Other
Change the `networkstatuslog.txt` save location on line two of `NetworkStatusLogger.sh`  
Then `NetworkStatusLogger.sh` script can simply be run:  
`./NetworkStatusLogger.sh`  
#### Issues
If any shell scripts cannot be run you may need to add execute permissions:  
`sudo chmod +x setup.sh`  
`sudo chmod +x setup_inc_web.sh`   
`sudo chmod +x NetworkStatusLogger.sh`   
If you encounter any other problems, open a github issue.
## How it works
Every 30 seconds a HTTP request is sent to google.   
If the there is no response within 5 seconds, then the date and time and a message is appended to the text file `networkstatuslog.txt`  
It's as simple as that!  
The `NetworkStatusLogger.service` is a systemctl service for use with systemd on a raspberry pi which always runs the shell script in the background.
