Cron diario
===========

Sincroniza directorios con rsync

.. warning::

    Change <IP>


Sync hg
-------

Crea el fichero ``/etc/cron.daily/sync-hg``::

    #!/bin/bash
    setuid hg rsync -azv --delete -e ssh \
        --exclude=.bash_history \
        --exclude=.bash_logout \
        --exclude=.bashrc \
        --exclude=.profile \
        --exclude=.ssh \
        --exclude=.viminfo \
        --exclude=rsync-hg.log \
        /home/hg hg@<IP>:/home > /home/hg/rsync-hg.log

Sync git
--------

Crea el fichero ``/etc/cron.daily/sync-git``::

    #!/bin/bash
    setuid git rsync -azv --delete -e ssh \
        --exclude=.bash_history \
        --exclude=.bash_logout \
        --exclude=.bashrc \
        --exclude=.profile \
        --exclude=.ssh \
        --exclude=.viminfo \
        --exclude=rsync-git.log \
        /home/git git@<IP>:/home > /home/git/rsync-git.log



