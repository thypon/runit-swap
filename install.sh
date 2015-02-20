#!/bin/bash
cd `dirname $0`
sudo cp -v ./runit-swap.sh      /usr/sbin/runit-swap.sh
sudo cp -v ./runit-swap.conf    /etc/
sudo cp -rv ./swap              /etc/sv/swap
sudo cp -v ./90-runit-swap.conf /etc/modprobe.d/90-runit-swap.conf
