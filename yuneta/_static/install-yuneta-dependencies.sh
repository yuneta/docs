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
    sudo apt -y install autotools-dev automake autogen libtool debmake cmake gettext mercurial git psmisc liblzma-dev zlib1g-dev libpcre3-dev libcurl4-openssl-dev libldap2-dev libidn11-dev libidn2-0-dev librtmp-dev uuid-dev libarchive-dev libpq-dev can-utils libsocketcan2 libsocketcan-dev
    sudo apt -y install clang libc++-dev libc++abi-dev libunwind-dev
    sudo apt - install libprocps-dev
    sudo apt - install libproc2-dev

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
