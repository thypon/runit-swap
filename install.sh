#!/bin/bash
cd `dirname $0`
[ "$UID" != "0" ] && [ ! -f /usr/bin/sudo ] && export SUDO="sudo"
$SUDO cp -v ./runit-swap.sh      /usr/sbin/runit-swap.sh
$SUDO cp -v ./runit-swap.conf    /etc/
$SUDO cp -rv ./swap              /etc/sv/swap
$SUDO cp -v ./90-runit-swap.conf /etc/modprobe.d/90-runit-swap.conf
