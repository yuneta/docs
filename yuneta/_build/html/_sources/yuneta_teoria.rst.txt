Último documento
================

.. sectionauthor:: Maestro Niyamaka.

Yuneta es
---------

**Sistema de programación** basado en **eventos**.
  Eventos procesados por elementos basados objetos **autómatas** (máquina estados finito).
  Hablando de **eventos**: `BPF: una revolución <http://www.brendangregg.com/blog/2019-12-02/bpf-a-new-type-of-software.html>`_

**Sistema de programación** basado en :ref:`Clase-G`
  y sus instancias :ref:`Objetos-G`,
  que se organizan en un árbol jerárquico de objetos llamado :ref:`Yuno`.


Código
------

El código se encuentra publicado en GitHub:

    - `GObj-Ecosistema <https://github.com/gobj-ecosistema>`_: librería base.
    - `Yuneta <https://github.com/yuneta>`_: Framework de desarrollo, para lenguajes C y Javascript.
    - `Yuno Store <https://github.com/yuno-store>`_: Almacén de yunos.

Tiene su origen en la librería `GinsFSM <https://pypi.org/project/ginsfsm>`_ desarrollada en Python.

.. _Clase-G:

Clase G
--------

:ref:`Clase-G` es una clase definida por programación,
diferente de la definida en los lenguajes.

Está compuesta de:

    - Sección de :ref:`Atributos`:
        - Accesible desde el exterior, forma parte del `Interface`.
        - Define la configuración y por lo tanto el comportamiento de la clase.

    - Sección de :ref:`Metodos-Clase`:
        - Accesible desde el exterior indirectamente a través de las funciones del
          :ref:`API-Yuneta`.
        - Implementa la funcionalidad de la clase.
        - Los métodos de clase son una lista fija de métodos que un clase puede, **o no**, implementar.

    - Sección de :ref:`Comandos`:
         - Accesible desde el exterior, forma parte del `Interface`.
         - Ejecuta comandos sobre la instancia de la clase, al estilo de comandos de consola.

    - Sección de métodos privados:
        - No accesible desde el exterior.
        - Uso interno de la clase.

    - :ref:`Automata` (Máquina de Estados Finitos):

         - Accesible desde el exterior mediante :ref:`Mensajes`; ciertos componentes formas parte del `Interface`.
         - El autómata contiene:
            - Lista de :ref:`Mensajes-Entrada`, forma parte del `Interface`.
            - Lista de :ref:`Mensajes-Salida`, forma parte del `Interface`.
            - Lista de :ref:`Estados`. Uso interno.
            - Lista de Mensajes **permitidos** en cada Estado. Uso interno
         - Los :ref:`Mensajes-Salida` pueden ser recibidos
           mediante :ref:`Subscripcion` en el momento de su :ref:`Publicacion`.


Un registro global de clases permite acceder a la definición de la clase para poder
crear instancias u :ref:`Objetos-G` de dicha clase.

.. _Objetos-G:

Objetos G
---------

Un objecto G es una instancia de una clase G.

Los objetos G se organizan en un ``árbol jerárquico``, mediante una relación ``padre-hijo``.
Este árbol de objetos es conocido como :ref:`Yuno`.

Dentro de este árbol de objetos o :ref:`Yuno`, algunos de estos objetos son de **uso interno**,
mientras que otros dan un :ref:`Servicio` al exterior mediante el `Interface` público.

Los Yunos viven dentro de un :ref:`Nodo-Red`,
y pueden ejecutarse en modo `standalone` o estar agrupados alrededor de un :ref:`Agente`.


.. _Yuno:

Yuno
----

Para facilitar la creación y puesta en marcha del árbol jerárquico de objetos
que componen un :ref:`Yuno`,
los :ref:`Objetos-G` tiene diferentes fases o estados,
que son independientes de los estados del :ref:`Automata`:

    - ``created``
        - Función invocante: :func:`gobj_create`
        - Método clase: :meth:`mt_create`

    - ``running``
        - ``True``
            - Función invocante: :func:`gobj_start`
            - Método de clase: :meth:`mt_start`
        - ``False``
            - Función invocante: :func:`gobj_stop`
            - Método de clase: :meth:`mt_stop`

    - ``playing``
        - ``True``
            - Función invocante: :func:`gobj_play`
            - Método de clase: :meth:`mt_play`
        - ``False``
            - Función invocante: :func:`gobj_pause`
            - Método de clase: :meth:`mt_pause`

    - ``destroyed``
        - Función invocante: :func:`gobj_destroy`
        - Método clase: :meth:`mt_destroy`


TODO

.. _Atributos:

Atributos
---------

TODO

.. _Metodos-Clase:

Metodos de Clase
----------------

:meth:`mt_create`

:meth:`mt_destroy`

:meth:`mt_start`

:meth:`mt_stop`

:meth:`mt_play`

:meth:`mt_pause`

TODO

.. _Comandos:

Comandos
--------

TODO

.. _Automata:

Automata
---------

TODO

.. _Estados:

Estados
-------

Las :ref:`Clase-G` no tienen porqué tener varios estados.
Si no lo necesitan pueden tener un único estado.

TODO

.. _Mensajes:

Mensajes
--------

TODO

.. _Mensajes-Salida:

Mensajes de Salida
------------------

TODO

.. _Mensajes-Entrada:

Mensajes de Entrada
-------------------

TODO

.. _Publicacion:

Publicacion
-----------

TODO

.. _Subscripcion:

Subscripcion
------------

TODO

.. _Servicio:

Servicio
--------

A veces el servicio ofrecido es sobre los :ref:`Recursos` accesibles por el Yuno
y que pone a disposición de los demás.

TODO

.. _Recursos:

Recursos
--------

TODO

.. _Agente:

Agente
------

TODO

.. _Nodo-Red:

Nodo de Red
-----------

TODO

.. _API-Yuneta:

API de Yuneta
-------------

:func:`gobj_register_gclass`

:func:`gobj_find_gclass`

:func:`gobj_create`

:func:`gobj_create_service`

:func:`gobj_destroy`

:func:`gobj_find_unique_gobj`

:func:`gobj_find_service`

:func:`gobj_find_gobj`

:func:`gobj_find_public_event_service`

:func:`gobj_list_gobj_tree`

:func:`gobj_list_gobj_attr`

:func:`gobj_start`

:func:`gobj_stop`

:func:`gobj_is_running`

:func:`gobj_start_tree`

:func:`gobj_stop_tree`

:func:`gobj_child_by_index`

:func:`gobj_child_size`

:func:`gobj_write_attr`

:func:`gobj_read_attr`

:func:`gobj_write_user_data`

:func:`gobj_kw_set_user_data`

:func:`gobj_read_user_data`

:func:`gobj_kw_get_user_data`

:func:`gobj_has_attr`

:func:`gobj_find_child`

:func:`gobj_match_childs`

:func:`gobj_build_webix_answer`

:func:`gobj_command`

:func:`gobj_stats`

:func:`set_machine_trace`

:func:`is_tracing`

:func:`set_timeout`

:func:`clear_timeout`

:func:`gobj_send_event`

:func:`gobj_event_in_input_event_list`

:func:`gobj_find_subscriptions`

:func:`gobj_subscribe_event`

:func:`gobj_unsubscribe_event`

:func:`gobj_unsubscribe_event2`

:func:`gobj_unsubscribe_list`

:func:`gobj_publish_event`

:func:`gobj_full_name`

:func:`gobj_short_name`

:func:`gobj_gclass_name`

:func:`gobj_name`

:func:`gobj_in_this_state`

:func:`gobj_change_state`

:func:`gobj_current_state`

:func:`get_input_event_list`

:func:`get_output_event_list`

