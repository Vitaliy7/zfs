yum install -y http://download.zfsonlinux.org/epel/zfs-release.el7_8.noarch.rpm
    rpm --import /ect/pki/rpm-gpg/RPM-GPG-KEY-zfsolinux
    yum install -y epel-release kernel-devel zfs
    yum-config-manager --disable zfs
    yum-config-manager --enable zfs-kmod
    yum install -y zfs
    modprobe zfs
    yum install -y wget
zpool create otus1 mirror /dev/sdb /dev/sdc
zpool create otus2 mirror /dev/sdd /dev/sde
zpool create otus3 mirror /dev/sdf /dev/sdg
zpool create otus4 mirror /dev/sdh /dev/sdi
zfs set compression=gzip-9 otus1
zfs set compression=gzip-9 otus2
zfs set compression=gzip-9 otus3
zfs set compression=gzip-9 otus4
