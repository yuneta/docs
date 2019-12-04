Yuneta
======

.. image:: yuneta.png
   :scale: 50 %


-------------------------------------------------

¿Qué es Yuneta?
===============

    - Mi perra, de raza bulldog francés.
    - El fruto de 30 años dedicado a escribir código.
    - Filosofía de programación basada en objetos,
      que internamente implementan un autómata (`FSM o Finite State Machine <https://en.wikipedia.org/wiki/Finite-state_machine>`_)
      y que se comunican e interrelacionan mediante mensajes o eventos.
    - Librería de desarrollo escrita en C para desarrollar en C
      (Mini-versión en Javascript para browsers y predecesor en `python <https://pypi.python.org/pypi/ginsfsm>`_).

    - Librería de bajo nivel, pegada al sistema operativo (**Linux only**, sorry)
      para alcanzar el mayor rendimiento posible.
    - Librería de alto nivel, `json inside <https://es.wikipedia.org/wiki/JSON>`_, y filosofía `python <https://www.python.org/dev/peps/pep-0020/>`_.

-------------------------------------------------

¿Qué es Yuneta?
===============

Es más que una librería. Es una herramienta completa:

    - Un **framework** de desarrollo de código abierto bajo la permisiva
      licencia `MIT <https://opensource.org/licenses/MIT>`_
      e inspirado en el framework de Python `Pyramid <http://www.pylonsproject.org/>`_.

Tiene categoría de framework porque integra:

    - Desarrollo rápido con skeletons (scaffolds).
    - Despliegue.
    - Operación.

Yuneta es una fábrica de **yunos**.

-------------------------------------------------

¿Qué es un **yuno**?
====================


    - Es un hijo de Yuneta, su producto.
    - Es un intento de normalizar el mundo del desarrollo.
    - Es un ente que tiene un **rol** (de negocio) y opcionalmente un **nombre**.
    - Los yunos pueden vivir como standalone (utilidades) o integrados en un reíno de yunos.
    - Los reinos de yunos se despliegan en **nodos** de Yuneta:
        - Servidores dedicados.
        - Servidores virtuales.


-------------------------------------------------

Mundo interconectado
====================

- Yuneta es básicamente una herramienta de comunicaciones.
- Los objetos G de un yuno se comunican por mensajes.
- Los yunos de un reino se comunican por mensajes.
- Los yunos de una red de nodos se comunican por mensajes.

El intercambio de mensajes contempla los modelos:

    request-response,

    subscribe-publish,

    o direct-send (order).


-------------------------------------------------

Yuneta
======

- Define tu mundo con los **roles** y el **flujo de mensajes** de **Yuneta**.

- Investiga y descubre el flujo de datos de tu negocio e impleméntalo con yunos.

- Lo podrás visualizar y controlar.

- Llegarás a conocer profundamente tu mundo.

- Tendrás control total de tu actividad.


-------------------------------------------------

Cambio de modelo
================

Cuando las

    "comunicaciones entre aplicaciones",

tienen más peso que las

    propias aplicaciones,

el

    **modelo tiene que cambiar**.


-------------------------------------------------

Cambio de modelo
================

Los datos importantes?

Ahora es más importante el

    **intercambio** de esos datos,

la

    política de intercambios,

la

    filosofía de los intercambios,

el

    diseño de los intercambios.


-------------------------------------------------

Yuneta
======

Empresa, organización, o lo que seas:

    ¿Conoces los roles y el flujo de información de tu empresa?

Pues deberías.

Disecciona tu empresa o negocio y descubre

    los roles necesarios,

    quien los ostenta,

    y los servicios que se intercambian entre ellos.


-------------------------------------------------

Yuneta
======

Cuando hayas

    diseccionado tu negocio

y lo hayas

    representado con Yuneta,

tendrás

    control,

    conocimiento.

Podrás

    mejorarlo

y

    optimizarlo.


-------------------------------------------------

Características internas
========================

Yuneta está construido sobre las siguientes librerías de código abierto:

* libuv_
* jansson_.
* `http parser`_
* pcre2_
* unwind_
* curl_
* rrdtool_
* sqlite_
* `gobj ecosistema`_
* `Yuneta C core`_

.. _ginsfsm: https://bitbucket.org/gobj-ecosistema/ginsfsm
.. _ASN.1: https://es.wikipedia.org/wiki/ASN.1
.. _json: http://www.json.org/
.. _http parser: http://github.com/joyent/http-parser
.. _pcre2: http://www.pcre.org
.. _unwind: http://www.nongnu.org/libunwind
.. _libuv: http://libuv.org
.. _jansson: http://www.digip.org/jansson
.. _curl: https://curl.haxx.se/
.. _sqlite: https://sqlite.org/
.. _rrdtool: http://oss.oetiker.ch/rrdtool/
.. _gobj ecosistema: https://bitbucket.org/gobj-ecosistema
.. _Yuneta C core: https://bitbucket.org/yuneta/c-core


-------------------------------------------------

Depliegue y Operación
=====================

Con la propia herramienta se han construido una serie de yunos standalone
para facilitar el despliegue y operación de yunos.

- **yuneta_agent**: Agente de reinos, se instala uno en cada nodo de Yuneta.
- **yuneta**: CLI (Command Line Interface), consola para operar el nodo local o nodos remotos.
- **ybatch**: Ejecuta comandos del agente en nodo local o remoto.
- **ylist**: Lista los yunos corriendo en un nodo.
- **yshutdown**: Apaga todos los yunos de un nodo, incluido el agente.
- **ystats**: Obtiene estadísticas de un yuno local o remoto.
- **ytestconfig**: Verifica un fichero de configuración json.


-------------------------------------------------

Reíno de utilidades
===================

Yuneta suministra también un reino de yunos ciudadanos, útiles para controlar y monitorizar un nodo:

- **emailsender**: yuno para envio de emails.
- **logcenter**: yuno centralizador de todos los logs del nodo.
- **statscenter**: yuno capturador de datos de otros yunos del nodo, generador de estadísticas y gráficas.

-------------------------------------------------

Protocolos
==========

Como herramienta de comunicaciones proveniente del mundo de compañias aéreas,
Yuneta ha sido usada para implementar entre otros los siguientes protocolos:

- UTS
- Matip-A
- Matip-B
- Erpl2
- Erpl5
- Batap
- Edifact
