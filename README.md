
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

* Get API key from cloudflare and put in cloudflare.env

## Power control

* Get TPlink device ID and put it in power_device.env

## Starting services

* Touch acme.json and make sure it has 600 permissions
* HOST=$(hostname) docker-compose up -d

## Octoprint config

* Install PSU controller plugin
* 
In webcam settings:
* Stream URL: /webcam/?action=stream


## Todo

Automate PSU plugin activation
`/usr/local/bin/python -m pip install https://github.com/kantlivelong/OctoPrint-PSUControl/archive/master.zip --no-cache-dir`
