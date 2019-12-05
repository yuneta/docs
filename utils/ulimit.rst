ulimit
======

These commands must be executed by a **sudo** user.

* Create the file ``/etc/profile.d/yuneta.sh`` and add the next content::

    # By default, we want umask to get set. This sets it for login shell
    # Current threshold for system reserved uid/gids is 200
    # You could check uidgid reservation validity in
    # /usr/share/doc/setup-*/uidgid file
    if [ $UID -gt 199 ] && [ "`id -gn`" = "`id -un`" ]; then
        umask 002
        ulimit -c unlimited
    fi

``ulimit -c unlimited`` to set core unlimited.

``umask 002`` to set group write permission for new files and directories.

* Add the following line to ``/etc/sysctl.conf``::

    kernel.core_pattern = core.%e

* Load sysctl settings::

    sysctl -p


In Ubuntu:
The /proc/sys/kernel/core_pattern configuration setting is set when the apport crash reporting
service starts on system boot.
So the first step in the process would be to disable apport.
This can be done by editing the /etc/default/apport file, and setting enabled=0.

At this point, the kernel default core pattern should remain on boot.
If you want to switch to some other pattern you can do this by placing
a file in /etc/sysctl.d that ends in .conf (e.g. 60-core-pattern.conf).
It's contents should look something like this (adjusting for your desired pattern)::

    kernel.core_pattern = core.%e

That should cause your custom pattern to be loaded on boot.
You should be able to test it without rebooting by running sudo::

    sysctl --system.



