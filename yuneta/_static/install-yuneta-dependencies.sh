#!/bin/bash

#  Exit immediately if a command exits with a non-zero status.
#set -e


################################################
#   install dev libraries
################################################
if [ -f "/usr/bin/apt-get" ]; then
#
#   With apt-get
#
    sudo apt -y install vim rsync tree sudo ssh curl fail2ban
    sudo apt -y install autotools-dev automake autogen libtool debmake cmake gettext mercurial git psmisc
    sudo apt -y install liblzma-dev zlib1g-dev libpcre3-dev libcurl4-openssl-dev
    sudo apt -y install libldap2-dev libidn11-dev libidn2-0-dev
    sudo apt -y install librtmp-dev uuid-dev libarchive-dev
    sudo apt -y install libpq-dev can-utils libsocketcan2 libsocketcan-dev
    sudo apt -y install clang libc++-dev libc++abi-dev libunwind-dev
    sudo apt -y install libprocps-dev
    sudo apt -y install libproc2-dev
    sudo apt -y install binutils-dev
    sudo apt -y install libiberty-dev
    sudo apt -y install python3-kconfiglib
    sudo apt -y install check
    sudo apt -y install super
    sudo apt -y install net-tools
    sudo apt -y install python-is-python3
    sudo apt -y install python3-sphinx
    sudo apt -y install meson
    sudo apt -y install libnanomsg-dev
    sudo apt -y install ninja-build


elif [ -f "/usr/bin/yum" ]; then
#
#   With yum
#
    sudo yum -y group install "Development Tools"
    sudo yum -y install pcre-devel zlib-devel zlib-static libuuid-devel psmisc xz-devel centos-release-scl libarchive-devel procps-ng-devel cmake

    sudo yum -y install ntp ntpdate ntp-doc
    sudo chkconfig ntpd on
    sudo ntpdate pool.ntp.org

    sudo systemctl start ntpd
    sudo systemctl enable ntpd
    sudo systemctl status ntpd

    # see https://www.howtoforge.com/tutorial/how-to-install-fail2ban-on-centos/
    sudo yum -y install epel-release
    sudo yum -y install fail2ban fail2ban-systemd

else
    echo "apt-get or yum unknown"
fi

################################################
#   Create user/group yuneta
################################################
if ! id -u yuneta > /dev/null 2>&1; then
    sudo useradd yuneta -Um -s /bin/bash
fi

if [ ! -d "/yuneta" ]; then
    sudo mkdir /yuneta
    sudo chown yuneta:yuneta /yuneta
    sudo chmod 775 /yuneta/
    sudo chmod g+s /yuneta/
fi
