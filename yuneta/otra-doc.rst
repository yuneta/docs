.. Yuneta documentation master file, created by
   sphinx-quickstart on Wed Oct 21 16:25:43 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=======================
Documentación antigua 1
=======================

.. warning::

    This documentation is deprecated!

Yuneta
======

.. image:: _static/yuneta.png
   :scale: 50 %


What is Yuneta?
===============

Yuneta_ is a C development framework.

Internal features:
    * asynchronous I/O, based in libuv_ library.
    * structured data, based in `ASN.1`_ standard.
    * json_ data, based in jansson_ library.
    * finite state machine, based in ginsfsm_ library.
    * communication between yunos by json_ messages.

Yuneta goal is **create** daemons or cli's, also called *yunos*.

Yuneta also give you a platform for **deploy** and **operation** of *yunos*.

Yuneta_ allows you to organize the *yunos* in **realms** of *yunos*.

A *yuno* can be a standalone program, ie, a utility,
or can be a collaborator program, ie, a service,
living in a realm sharing the world with others *yunos*.

*Realms* of *yunos* can be easily cloned, even running realms
with all his persistent data.

.. _ginsfsm: https://bitbucket.org/gobj-ecosistema/ginsfsm
.. _ASN.1: https://es.wikipedia.org/wiki/ASN.1
.. _json: http://www.json.org/

Dependencies
------------

    * `http parser`_
    * pcre2_
    * unwind_
    * libuv_
    * jansson_
    * `gobj ecosistema`_
    * `Yuneta C core`_

.. _http parser: http://github.com/joyent/http-parser
.. _pcre2: http://www.pcre.org
.. _unwind: http://www.nongnu.org/libunwind
.. _libuv: http://libuv.org
.. _jansson: http://www.digip.org/jansson
.. _gobj ecosistema: https://bitbucket.org/gobj-ecosistema
.. _Yuneta C core: https://bitbucket.org/yuneta/c-core


Installation
============

Introduction
------------

Yuneta uses a fixed directory for develop and deploy/operation,
associated with a shared group (**yuneta**).
This name are fixed, although it has been chosen to rarely
match other names:

    - ``/yuneta``

        Shared group directory for development, deploy and operation of realms and yunos.


.. note::

    You can read about Linux permissions in `Linux permissions demystified`_.

.. _`Linux permissions demystified`: http://blog.superuser.com/2011/04/22/linux-permissions-demystified/


To install Yuneta_ follow the next instructions in order.

AS SUDO
-------

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




* Create the **shared** user/group ``yuneta``::

    adduser --home=/yuneta yuneta
    chmod 775 /yuneta/
    chmod g+s /yuneta/


* Install next packages:

    - With apt-get::

        apt-get -y install autotools-dev automake autogen libtool debmake cmake;
        apt-get -y install python3-all-dev python3-setuptools;
        ### apt-get -y install texlive-full;
        apt-get -y install tree vim;
        apt-get -y install libpcre3-dev zlib1g-dev libxml2-dev libpango1.0-dev libcairo2-dev;
        apt-get -y install libcurl4-openssl-dev libssl-dev libldap2-dev libidn2-dev librtmp-dev;
        apt-get -y install libreadline-dev libeditline-dev liblzma-dev libbz2-dev;
        apt-get -y install libncurses5-dev libncursesw5-dev ncurses-doc;
        apt-get -y install python3-ldap3 libsasl2-dev;
        apt-get -y install librrd-dev;
        easy_install -U sphinx;

    - With yum::

        yum -y install curl psmisc tree vim-enhanced rrdtool rsync
        yum -y install python-tools python-devel
        yum -y install textlive texlive-latex
        yum -y install mercurial git cvs
        yum -y install automake libtool
        yum -y install tree
        yum -y install cmake
        yum -y install pcre-devel libxml2-devel pango-devel cairo-devel
        yum -y install libcurl-devel openssl openssl-devel openssl-static
        yum -y install openldap openldap-devel xz-libs xz-devel libidn-devel libssh2 libssh2-devel
        yum -y install readline-devel libedit-devel bzip2-devel
        yum -y install zlib-devel
        yum -y install ncurses-devel ncurses-term ncurses-libs ncurses
        yum -y install python-ldap libsasl2-dev
        yum -y install librrd-dev
        yum -y install rpmdevtools rpmlint


* Create the users that you want they belong to the *yuneta* group::

    adduser *username*

    usermod -a -G yuneta *username*

.. warning::

    Remember re-login if you are the user executing this script and
    added as a new member of *yuneta*.


AS USER member of yuneta group (NO SUDO PLEASE!)
------------------------------------------------

These commands must be executed by a user member of **yuneta** group.

Create development directories::

    mkdir /yuneta/development
    mkdir /yuneta/development/bin
    mkdir /yuneta/development/projects
    mkdir /yuneta/development/output
    mkdir /yuneta/development/yuneta

Create operation directories::

    mkdir /yuneta/bin
    mkdir /yuneta/realms
    mkdir /yuneta/repos
    mkdir /yuneta/store

Clone gobj-ecosistema::

    mkdir -p /yuneta/development/yuneta/^gobj-ecosistema/
    hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema/docs             /yuneta/development/yuneta/^gobj-ecosistema/docs
    hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema/external-libs    /yuneta/development/yuneta/^gobj-ecosistema/external-libs
    hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema/ghelpers         /yuneta/development/yuneta/^gobj-ecosistema/ghelpers
    hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema/ginsfsm          /yuneta/development/yuneta/^gobj-ecosistema/ginsfsm

Clone yuneta::

    mkdir -p /yuneta/development/yuneta/^yuneta/
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/c-core                 /yuneta/development/yuneta/^yuneta/c-core
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/docs                   /yuneta/development/yuneta/^yuneta/docs
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/js-core                /yuneta/development/yuneta/^yuneta/js-core
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/yuno-skeleton          /yuneta/development/yuneta/^yuneta/yuno-skeleton
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/yuno_agent             /yuneta/development/yuneta/^yuneta/yuno_agent
    hg clone ssh://hg@yuneta.io/yuneta/yuneta/yuno_cli               /yuneta/development/yuneta/^yuneta/yuno_cli


Build gobj-ecosistema::

    cd /yuneta/development/yuneta/^gobj-ecosistema/external-libs
    ./configure-libs.sh
    ./make-libs.sh
    ./install-libs.sh

    cd /yuneta/development/yuneta/^gobj-ecosistema/ghelpers
    mkdir build
    cd build
    cmake ..
    make
    make install

    cd /yuneta/development/yuneta/^gobj-ecosistema/ginsfsm
    mkdir build
    cd build
    cmake ..
    make
    make install

Build yuneta::

    cd /yuneta/development/yuneta/^yuneta/c-core
    mkdir build
    cd build
    cmake ..
    make
    make install

    cd /yuneta/development/yuneta/^yuneta/yuno_agent
    mkdir build
    cd build
    cmake ..
    make
    make install

    cd /yuneta/development/yuneta/^yuneta/yuno_cli
    mkdir build
    cd build
    cmake ..
    make
    make install

    cd /yuneta/development/yuneta/^yuneta/yuno-skeleton
    mkdir build
    cd build
    cmake ..
    make
    make install

Install the agent::

    cd /yuneta/development/output/agent/
    /bin/bash ./deploy_agent.sh

    cd /yuneta/agent/service
    sudo ./install-yuneta-service.sh


Development Realm
=================

**Factory of Yunos**

    - ``/yuneta/development``

        Shared group directory for development.

        Include the Yuneta source code and your projects.

Development Realm Organization
------------------------------

- /yuneta/development
    It's a linux shared group (drwxrwsr-x).

    All files and directories have write permission for all members of group.

    The group name is and must be *yuneta*.

    The propietary of directories and files can be any member of the group.

    The directories in */yuneta/development* are:

    /bin
        Development utilities, like ``yuno-skeleton``.

        /skeletons
            Skeletons for yuno projects and gclass source code.

            /gclass_child

            /gclass_simple

            /gclass_timer

            /yuno_simple

            /yuno_user

            ...

    /output
        The product of Yuneta_ framework: includes, libraries and *yunos*.

        /agent
            binaries of agent and scripts to install as service.

        /bin
            binaries of external libraries.

        /include
            include files.

        /lib
            library files.

        /man
            generated by external libraries.

        /share
            generated by external libraries.

        /yunos
            binary files.


    /projects
        Your Yuneta_ projects.

    /yuneta
        The source code of Yuneta:

        /^gobj-ecosistema-v2
            gobj-ecosistema source code.

        /^yuneta-v2  /
            Yuneta_ source code.

        /^yunos
            some yunos supplied by Yuneta_.


Yuneta Realm
============

**Deploy and Operation of Yunos**


Yuneta Realm Organization
-------------------------

- /yuneta
    It's a linux shared group (drwxrwsr-x).

    All files and directories have write permission for all members of group.

    The group name is and must be *yuneta*.

    The propietary of directories and files can be any member of the group.

    /agent
        **non-persistent**.


        ``yuneta_agent`` yuneta agent.

        `yuneta_agent.json` yuneta agent configuration.

        /service
            Utilities to install the yuneta_agent service::

                - install-yuneta-service.sh
                - remove-yuneta-service.sh
                - yuneta_agent


    /bin
        **non-persistent**.

        ``yuneta`` command line interface.
        StandAlone *yunos*.
        Utilities of deploy and operation.

    /public
        **non-persistent**.

        Public files.

    /realms
        **non-persistent**.

        /domain

            /bin
                Scripts to run the yunos.

            /data
                Data valid while realm live.

            /temp
                Temporal data files. Can be delete in a machine restart.

            /logs
                Log files.

    /repos
        **persistent**.

        Local repository of *yuno*'s binaries and *yuno*'s configurations.

    /store
        **persistent**.

        Home of *agent.db*.

        /backup
            Backup of databases in json format files.

        /service
            Databases of yuno's services.


.. note::
    To clone a living realm you must to copy the **persistent** directories.

    The agent yuno supports by default the next sizes:

        - maximum yuno binary size: 50M.
        - maximum configuration element size: 50M.
        - maximum memory used by ``yuneta_agent`` and ``yuneta`` yunos: 200M.

    These limits are actually set by the maximum memory block
    that are configurated in ``yuneta_agent`` and ``yuneta`` yunos.



Contents
========

.. toctree::
   :maxdepth: 2



Indices and tables
==================

* :ref:`genindex`
* :ref:`search`

