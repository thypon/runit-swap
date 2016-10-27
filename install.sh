#!/bin/bash
cd `dirname $0`
[ "$UID" != "0" ] && [ -f /usr/bin/sudo ] && export SUDO="sudo"
$SUDO cp -v ./runit-swap	/usr/bin/runit-swap
$SUDO cp -v ./swap.conf		/etc/runit/
$SUDO cp -rv ./swap		/etc/sv/swap
