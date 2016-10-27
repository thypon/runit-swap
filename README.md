# runit-swap
Script for auto-creation and mounting of: zram swaps, swap files (through loop) devices, swap partitions.
It is configurable in /etc/runit/swap.conf.
Source:
```
/etc/runit/swap.conf
/usr/bin/runit-swap
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
