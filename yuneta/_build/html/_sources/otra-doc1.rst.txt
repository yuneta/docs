.. include:: colors.rst

.. |pagebreak| raw:: html

   <div class="pagebreak"> </div>

====================
Otra documentación 1
====================

Introducción
============

:yuneta:`Yuneta` es una herramienta de **desarrollo** y **operación**
de sistemas de información escalables y distribuidos, desplegados en un sistema o red de :node:`nodos` Linux.

El mundo de Yuneta
------------------

:yuneta:`Yuneta` pertenece al mundo de **Aplicación**.

:yuneta:`Yuneta` es usuaria del mundo de **Sistema Operativo** y del mundo de **Red**.

El mundo de **Sistema Operativo** y **Red** son mundos de **operación**.
Hay que dejar claro que :yuneta:`Yuneta` posee su **propia operación**,
independiente del resto y con una formación específica.

   .. image:: _static/mundos.svg
      :width: 25 %

Herramienta de bajo nivel
-------------------------

:yuneta:`Yuneta` está escrita en C, lo que proporciona rápidez y tamaño mínimo.
Su única dependencia es el sistema operativo Linux, de 32 o 64 bits.
Eso le permite correr tanto en grandes máquinas como en pequeñas máquinas tipo RaspberryPI.
Desarrollado con el IDE |kdevelop_link| de la distribución de Linux |kubuntu_link|.

.. |kdevelop_link| raw:: html

   <a href="https://www.kdevelop.org/" target="_blank">KDevelop</a>

.. |kubuntu_link| raw:: html

   <a href="https://kubuntu.org/" target="_blank">Kubuntu</a>



Herramienta de desarrollo rápido
--------------------------------

:yuneta:`Yuneta` es un framework de desarrollo rápido, fuertemente inspirado en el diseño interno del
lenguaje |python_link| y el framework de desarrollo web |pyramid_link|.

.. |python_link| raw:: html

   <a href="https://www.python.org/" target="_blank">Python</a>

.. |pyramid_link| raw:: html

   <a href="https://trypyramid.com/" target="_blank">Pyramid</a>

Herramienta legible
-------------------

El origen de :yuneta:`Yuneta` es un |ginsfsm_link| escrita en Python,
heredando del lenguaje su filosofía de sencillez y legibilidad (|zen_link|).

.. |ginsfsm_link| raw:: html

   <a href="https://pythonhosted.org/ginsfsm/" target="_blank">libreria</a>

.. |zen_link| raw:: html

   <a href="https://www.python.org/dev/peps/pep-0020/" target="_blank">Zen</a>

Herramienta en crecimiento
--------------------------

:yuneta:`Yuneta` busca nuevos y variados proyectos para crecer y fortalecerse con nuevas habilidades,
con el objetivo de conseguir una herramienta todo terreno.

:yuneta:`Yuneta` se puede aplicar en cualquier campo donde existan comunicaciones e intercambio de mensajes,
aportando escalabilidad, potencia y fiabilidad.

:yuneta:`Yuneta` ha nacido para jugar un papel importante en campos como:

* Internet de las Cosas (IoT)
* Blockchain
* Machine Learning

Caracteristicas técnicas
------------------------

* Kernel en lenguaje C, para sistemas Linux de 32 o 64 bits.
* Filosofía open-source, usando las prestigiosas librerías de código abierto:

    * Plataforma de comunicaciones asíncrona  `Libuv <http://libuv.org>`_.
    * librería JSON jansson_.

* CLI para operación avanzada en consola.
* GUI para operación básica en navegador.

.. _libuv: http://libuv.org
.. _jansson: http://www.digip.org/jansson

|pagebreak|

Conceptos básicos
=================

Conceptos básicos sobre los que se asienta :yuneta:`Yuneta`:

    * :node:`nodo`
    * :realm:`reino`
    * :yuno:`yuno`
    * :role:`role`
    * :name:`name`
    * :service:`servicio`
    * :channel:`canal`
    * :message:`mensaje`
    * :cli:`CLI`
    * :gui:`GUI`


   .. image:: _static/huevos.svg
      :width: 90 %


Nodo
----

El :node:`Nodo` es el dispositivo, físico o virtual,
donde se alojan los componentes de :yuneta:`Yuneta`: los :realm:`reinos` y sus :yuno:`yunos`.
Todo ello gestionado por el :agent:`Agente` del :node:`Nodo`.

El :node:`nodo` contiene el sistema operativo, única dependencia de :yuneta:`Yuneta`,
y es la puerta a la red,
por donde se establecen los :channel:`canales` que conectan a otro :node:`nodos` o dispositivos exteriores.

El :node:`nodo` afecta principalmente a Operación: por un lado, a *Operación de Yuneta*,
y por otro lado, a *Operación de Sistemas Operativos y Red*.
Deben existir procedimientos claros, fluidos y si es posible automátizados, entre estos dos mundos de Operación.

El tiempo de respuesta de *Operación de S.O. y Red* debe ser lo más corto posible ante requerimientos
como solicitar un nuevo nodo o la existencia de un problema de conectividad de red.

El :node:`nodo`, que normalmente estará distribuido en entornos de producción, preproducción, test, etc,
afecta al presupuesto, porque tiene un coste dependiendo de sus características (memoria, cpus, disco, etc).

Se requiere, por tanto, que la red de :node:`nodos` del sistema, con la topología elegida,
esté bien dimensionada;
por un lado, para no andar cortos de potencia, problema que afectaría al cliente final;
por otro lado, para no ir muy sobrados de potencia y ser así un gasto excesivo.

Exiten varios tipos de nodos:

* :node:`nodo` master: Nodo gestor de un sistema de nodos.
* :node:`nodo` operacional. Nodo integrante de un sistema de nodos.
* :node:`nodo` fuente. Nodo con el código fuente y generador del componente binario del :yuno:`Yuno`.

Reino
-----

:realm:`Reino` es la agrupación lógica de :yuno:`yunos` para poder administrarlos fácilmente.


Yuno
----

:yuno:`Yuno` es la entidad definida con un rol (binario) y/o un nombre (configuración)
que ofrece los :service:`servicios` de tu negocio.

Rol
---

Los :yuno:`Yunos` se diseñan con un :role:`Rol`. El que quieras.

Nombre
------

Tus :yuno:`Yunos`, además de tener **obligatoriamente** un :role:`rol` ,
pueden tener un :name:`nombre` o ser anónimos, lo que quieras.

Servicio
--------

:service:`Servicio` es la tarea dentro del :yuno:`yuno`
que ofrece un servicio público de negocio alimentado por :message:`mensajes`.

Canal
-----

:channel:`Canal` es la conexión entre los :service:`servicios` de los yunos
por donde circulan los :message:`mensajes`.

Mensaje
-------

:message:`Mensaje` es la estructura de datos en formato `Json <https://en.wikipedia.org/wiki/JSON>`_
que contiene la información vital de tu negocio.

CLI
---

GUI
---


|pagebreak|

Diseña tu sistema de información
================================

Define los :message:`mensajes` de tu negocio y
diseña los :service:`servicios` necesarios para distribuir y procesar los mensajes.

Crea tus :service:`servicios` en :yuno:`yunos` definidos por **rol** y **nombre**,
organiza los yunos en :realm:`reinos`,
y para conseguir potencia y fiabilidad, distribuye los reinos y yunos en multiples :node:`nodos`,
conectando los servicios mediante :channel:`canales`.

   .. image:: _static/huevos2.svg
      :width: 120 %


