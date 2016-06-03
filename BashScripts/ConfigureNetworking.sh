## Configure eth0
# Configure IP, Default Gateway, DNS
# vi /etc/sysconfig/network-scripts/ifcfg-eth0

DEVICE="eth0"
NM_CONTROLLED="yes"
ONBOOT=yes
HWADDR=A4:BA:DB:37:F1:04
TYPE=Ethernet
BOOTPROTO=static
NAME="System eth0"
UUID=5fb06bd0-0bb0-7ffb-45f1-d6edd65f3e03
IPADDR=192.168.1.44
NETMASK=255.255.255.0


## Configure Default Gateway
#
# vi /etc/sysconfig/network

NETWORKING=yes
HOSTNAME=centos6
GATEWAY=192.168.1.1


## Restart Network Interface
#

/etc/init.d/network restart

## Configure DNS Server
#
# vi /etc/resolv.conf

nameserver 8.8.8.8      # Replace with your nameserver ip
nameserver 192.168.1.1  # Replace with your nameserver ip