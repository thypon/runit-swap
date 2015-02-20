# runit-swap
Script for auto-creation and mounting of: zram swaps, swap files (through loop) devices, swap partitions.
It is configurable in /etc/runit-swap.conf.
Source:
```
/etc/runit-swap.conf
/usr/lib/modprobe.d/90-runit-swap.conf
/usr/sbin/runit-swap.sh
/etc/sv/swap/run
/etc/sv/swap/finish
```
Using:
```
# ln -s /etc/sv/swap /var/services
```

Note:
=======
Dependence: util-linux >= 2.26 

In package install /usr/lib/modprobe.d/90-runit-swap.conf - this file create zram devices, 32 - this is maximum for this module.

You can use empty devices. 32 - because zram can't create new devices if others already in using, like loop module.
