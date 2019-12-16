#!/bin/bash
#################################################################
#   This script must be execute by sudo user
#   WARNING:
#   Don't write here commands that a normal user must write or execute,
#   or you will have collateral damage
#   (files or directories owned by root)
#################################################################

################################################
#   set group write permission
#   set core unlimited
################################################
if [ ! -f "/etc/profile.d/yuneta.sh" ]; then
    echo "Creating /etc/profile.d/yuneta.sh"
    echo "# By default, we want umask to get set. This sets it for login shell" > /etc/profile.d/yuneta.sh
    echo "# Current threshold for system reserved uid/gids is 200" >> /etc/profile.d/yuneta.sh
    echo "# You could check uidgid reservation validity in" >> /etc/profile.d/yuneta.sh
    echo "# /usr/share/doc/setup-*/uidgid file" >> /etc/profile.d/yuneta.sh
    echo "if [ $UID -gt 199 ] && [ \"\`id -gn\`\" = \"\`id -un\`\" ]; then" >> /etc/profile.d/yuneta.sh
    echo "    umask 002" >> /etc/profile.d/yuneta.sh
    echo "    ulimit -c unlimited" >> /etc/profile.d/yuneta.sh
    echo "fi" >> /etc/profile.d/yuneta.sh
    echo "" >> /etc/profile.d/yuneta.sh
fi

if [ ! -n "`grep \"kernel.core_pattern\" /etc/sysctl.conf`" ]; then
    # code if not found
    echo "Adding kernel.core_pattern to /etc/sysctl.conf"
    echo "kernel.core_pattern = core.%e" >> /etc/sysctl.conf
    sysctl -p
fi

################################################
#   Create user/group yuneta
################################################
echo "Press any key to continue: create user yuneta"
read

if [ ! -d "/yuneta" ]; then
    adduser --home=/yuneta yuneta
    chmod 775 /yuneta/
    chmod g+s /yuneta/
fi

################################################
#   install dev libraries
################################################
echo "Press any key to continue: install packages"
read

if [ -f "/usr/bin/apt-get" ]; then
#
#   With apt-get
#
    apt-get -y install autotools-dev automake autogen libtool
    apt-get -y install libpython-all-dev python-setuptools
    apt-get -y install texlive-full
    apt-get -y install tree vim
    apt-get -y install libpcre3-dev zlib1g-dev
    apt-get -y install libcurl4-openssl-dev libssl-dev libldap2-dev libidn2-dev librtmp-dev
    apt-get -y install libreadline-dev libeditline-dev liblzma-dev libbz2-dev
    apt-get -y install libncurses5-dev libncursesw5-dev ncurses-doc
    apt-get -y install python-ldap libsasl2-dev
    apt-get -y install librrd-dev
    easy_install -U sphinx


elif [ -f "/usr/bin/yum" ]; then
#
#   With yum
#
    yum -y install python-tools python-devel
    yum -y install textlive texlive-latex
    yum -y install mercurial git cvs
    yum -y install automake libtool
    yum -y install tree
    yum -y install cmake
    yum -y install pcre-devel
    yum -y install libcurl-devel openssl openssl-devel openssl-static
    yum -y install openldap openldap-devel xz-libs xz-devel libidn-devel libssh2 libssh2-devel
    yum -y install readline-devel libedit-devel bzip2-devel
    yum -y install zlib-devel
    yum -y install ncurses-devel ncurses-term ncurses-libs ncurses
    yum -y install python-ldap libsasl2-dev
    yum -y install librrd-dev
    easy_install -U sphinx


else
    echo "apt-get or yum unknown"
fi

################################################
#   add users
################################################
echo "Press any key to continue: create users of yuneta group"
read

while true
do
    echo ""
    echo ""
    read -p "Enter a new user name for **yuneta** group (or newline to quit): " username
    if [[ -z "${username// }" ]]; then
        break
    else
        adduser ${username}
        usermod -a -G yuneta ${username}
    fi
done

