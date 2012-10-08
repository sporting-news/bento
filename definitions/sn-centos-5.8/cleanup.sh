#!/bin/bash -eux
yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y erase *.i?86
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*rpm
# fix the time
/sbin/service ntpd stop
/sbin/ntpdate us.pool.ntp.org
/sbin/service ntpd start

