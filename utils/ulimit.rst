ulimit
======

::

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

