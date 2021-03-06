#!/bin/sh

piawareDeb="piaware-repository_3.6.3_all.deb"

echo "***** Start script piaware install ******"

sleep 3

# Add piaware source
wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/$piawareDeb
sudo dpkg -i $piawareDeb

#Install piaware
sudo apt-get update
sudo apt-get install piaware piaware-web dump1090-fa rtl-sdr -y

if [ ! -f "/etc/armbian-release" ]
    then
      sudo apt-get install piaware-support -y
    fi

echo "***** End script piaware install ******"
