Creación de proyecto nuevo con git
==================================

Comandos a ejecutar para crear un proyecto nuevo en el nodo repositorio y en un nodo de usuario.

Por ejemplo, vamos a crear el proyecto **timeranger**, en la organización **gobj-ecosistema**, en el sistema **yuneta**.

1) EJMPLO! En el nodo repositorio::

    * ``cd /home/git/yuneta/gobj-ecosistema``
    * ``git init --bare --shared timeranger.git``
    * ``sudo chown git:git timeranger.git -R``

2) EJEMPLO! En el nodo de usuario::

    * ``cd /yuneta/development/yuneta/^gobj-ecosistema``
    * ``git init timeranger``
    * ``cd timeranger``
    * ``git remote add origin git@node1:/git/yuneta/gobj-ecosistema/timeranger.git``
