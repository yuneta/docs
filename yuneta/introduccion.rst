Introducción
============

En este framework la unidad básica de desarrollo y de negocio es el "registro que viaja", el mensaje.

Las clases G son las clases que se crean con este framework;
usamos el lenguaje para crear estas clases; están por encima del lenguaje.
No tienen nada que ver con las clases propias de cada lenguaje.

Las clases G están creadas para trabajar con mensajes.

Los mensajes son la ``unidad básica`` de **desarrollo** y también de **negocio** en este framework.

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;www.draw.io\&quot; modified=\&quot;2020-02-19T19:03:03.140Z\&quot; agent=\&quot;Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0\&quot; etag=\&quot;GliHjW2MOxX1Pu_HVt8K\&quot; version=\&quot;12.7.2\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7VhNj5swFPw1HCuBzVeOWZpuVWkrVTn07MQOuGtwZJwl6a/vI9gEApGyUthU2pBD7Hm2sWfe2ICDk3z/rMg2e5GUCQe5dO/grw5CXhiE8FcjhwaJZrgBUsVpA7knYMn/MtPTojtOWWmwBtJSCs23fXAti4KtdQ8jSsmq32wjBe0BW5KyAbBcEzFEf3OqswaNA/eEf2c8zeydPddEcmIbG6DMCJVVB8ILBydKSt2U8n3CRE1en5dvF6LtxBQr9DUdysUfz6t+xejH64q7ukzZIfoSmmHeiNiZFZvZ6oOlAIYBtqHyVGVcs+WWrOtIBYIDlulcQM2DYqmVfG1pggU+bbgQiRRSHUfCNGAx9duWnUiMVjgMIZIqQjmsqBObRdSNIoiZqTKl2f4iCV5LLeQkkznT6gBNTAds1TjYBPWbenUS1wtNm6wjLHJNIhOTUGk79olzKBja3yGBH04rgeyR2VxDaTZB/RuTJjxeN6I/7NOPvGBAfzzCPnanIn82IH+uteKrnYZd51wGWLge49uyVciCnVFrICJ4WkB1DUQxwJ9qGjlsM3MTyDml4pLASu4Kyup1uENF3eN1I33iM32sXTr6+KPumEifAH/k/nSFCS7ZaQpzxHc2R+APyF9qonkJmfswB0Kze5sj+ETmCPrk45GdqX326rLvT8b+8Nx+YWUJD4QPb4D2d/ZGOPFT1f/sDRRc6Y3pTg40YD+ReU4K+vAGyDM81z/UG9HYS18oahUof4NiWhefE0FKuPXcqSfShFfKRi0CE+j0GRnmJ8nZewf5dBli/WLfSuF19zxDZvFNMgSqp08Ox1jnww1e/AM=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://www.draw.io/js/viewer.min.js"></script>


Interface clase G
-----------------

El Interface, es decir, los canales de acceso a una clase G son:

    - ``atributos``
    - ``comandos``
    - ``estadísticas``
    - ``mensajes``


``atributos``
~~~~~~~~~~~~~

Es básicamente una tabla de atributos key/value.

Puede servir para configurar la clase, operarla, o lo que quieras. En tiempo real.

Operaciones:
    - `read`
    - `write`

``comandos``
~~~~~~~~~~~~

Es básicamente una tabla de comandos propios de la clase.
Para usar al estilo de *comandos en línea*.

Puede servir para configurar la clase, operarla, o lo que quieras. En tiempo real.

Operaciones:
    - `command`
    - `response`

``estadísticas``
~~~~~~~~~~~~~~~~

Visualiza el estado de la clase con una imagen de todas las métricas configuradas.
Crea métricas para estadísticas de una manera flexible, a partir de los atributos o con calculos propios.
En tiempo real.

Operaciones:
    - `stats`

``mensajes``
~~~~~~~~~~~~

Básicamente es el canal de datos.

Este canal lo puedes usar para intercambiar mensajes entre diferentes clases G.

El formato y contenido del mensaje es cosa tuya.

El framework puede trabajar con cualquier tipo de mensajes binario y json.

Este framework está especializado en trabajar con mensajes con id, es decir, clave/valor, y en json.

Para intercambiar los mensajes se pueden usar los siguientes modelos:

    - ``subscripción``  <--> ``publicación``
    - ``solicitud``     <--> ``acuse de recibo``
    - ``envio``          -->

Operaciones:
    - `request/answer`
    - `subscribe/publish`
    - `send`


Atributos
---------

Atributos de la clase. Configuran el objeto, su comportamiento.
Pueden ser públicos (accesibles fuera del yuno),
de lectura, escritura, persistentes, con estadística, y más.

Comandos
--------

Comandos propios de la clase, para operar, configurar, o lo que tú quieras.
Para ser usados principalmente desde consola.

El módelo de mensajes puede ser request/response, o command (sin ack).

Podríamos decir que juega el rol de canal de señalización.

Estadísticas
------------

Monitoriza el objeto con las métricas que consideres.

Mensajes
--------

Aquí podríamos decir que es el canal de datos.
El modelo de mensajes: request/response, subscribe/publish, send.

Intercambio de mensajes en json.


Agrupación de clases G
----------------------

Las clases G se agrupan y organizan en yunos.

Los yunos son entidades con role y/o nombre.

Para hacer un trabajo colaborativo, los yunos pueden comunicarse entre sí, de la misma manera que
lo hacen las clases G: usando el Interface público de las clases internas del yuno.

Un yuno en el backend, es en realidad un proceso de Linux, que no usa threads.

Haciendo uso del core de clases G, hacemos posible que el intercambio de mensajes entre dos objetos,
sea haga de la misma manera aunque un objeto pertenezca a un yuno remoto.


