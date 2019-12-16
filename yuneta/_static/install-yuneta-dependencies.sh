#!/bin/bash

#  Exit immediately if a command exits with a non-zero status.
set -e


################################################
#   Create user/group yuneta
################################################
id -u yuneta >/dev/null 2>&1 || useradd yuneta

if [ ! -d "/yuneta" ]; then
    sudo mkdir /yuneta
    sudo chown yuneta:yuneta /yuneta
    sudo chmod 775 /yuneta/
    sudo chmod g+s /yuneta/
fi

################################################
#   install dev libraries
################################################
if [ -f "/usr/bin/apt-get" ]; then
#
#   With apt-get
#
    sudo apt -y install vim rsync tree sudo ssh curl fail2ban
    sudo apt -y install autotools-dev automake autogen libtool debmake cmake gettext mercurial git psmisc liblzma-dev zlib1g-dev libpcre3-dev libcurl4-openssl-dev libssl-dev libldap2-dev libidn11-dev libidn2-0-dev librtmp-dev libprocps-dev uuid-dev libarchive-dev clang

elif [ -f "/usr/bin/yum" ]; then
#
#   With yum
#
    sudo yum -y group install "Development Tools"
    sudo yum -y install pcre-devel zlib-devel zlib-static libuuid-devel psmisc xz-devel centos-release-scl libarchive-devel clang

    # see https://www.howtoforge.com/tutorial/how-to-install-fail2ban-on-centos/
    sudo yum -y install epel-release
    sudo yum -y install fail2ban fail2ban-systemd

else
    echo "apt-get or yum unknown"
fi

