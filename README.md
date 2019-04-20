
# Home Raspberry Pi print server etc.

## Pi setup

Wrote these notes after so will miss something inevitably

* Install Raspian lite on SD card
* touch /boot/ssh so ssh 
* Activate webcam via raspi-config (change passwds while there)
* Edit /etc/modules and add bcm2835-v4l2 so /dev/video0 exists
* Connect USB cable and figure out which /dev/tty is the printer
* Install docker (can't remember how I did this)
* Install docker-compose from pip (will need a few dependencies adding using apt)

## Network

* Give Pi static IP and port-forward ports 80 and 443

## DNS

* Get API key from cloudflare and put in .env.dist

## Starting services

* Touch acme.json and make sure it has 600 permissions
* docker-compose up -d 

## Octoprint config

In webcam settings:
Stream URL: /webcam/?action=stream
