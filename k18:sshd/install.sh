#! /bin/bash
groupadd local01
groupadd local02
gropuadd -c users -g local01 local01
gropuadd -c users -g local01 local02
gropuadd -c users -g local01 local03
gropuadd -c users -g local02 local04
gropuadd -c users -g local02 local05
gropuadd -c users -g local02 local06
echo "local01"| passwd --stdin local01
echo "local02"| passwd --stdin local02
echo "local03"| passwd --stdin local03
/usr/sbin/ssh-keygen -A
cp /opt/docker/krb5.conf /etc/krb5.conf 

