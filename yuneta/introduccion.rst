Introducción
============

La interacción con la clase G se realiza a través de sus atributos, comandos y mensajes.

Interface clase G
-----------------

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;www.draw.io\&quot; modified=\&quot;2020-02-19T19:03:03.140Z\&quot; agent=\&quot;Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0\&quot; etag=\&quot;GliHjW2MOxX1Pu_HVt8K\&quot; version=\&quot;12.7.2\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7VhNj5swFPw1HCuBzVeOWZpuVWkrVTn07MQOuGtwZJwl6a/vI9gEApGyUthU2pBD7Hm2sWfe2ICDk3z/rMg2e5GUCQe5dO/grw5CXhiE8FcjhwaJZrgBUsVpA7knYMn/MtPTojtOWWmwBtJSCs23fXAti4KtdQ8jSsmq32wjBe0BW5KyAbBcEzFEf3OqswaNA/eEf2c8zeydPddEcmIbG6DMCJVVB8ILBydKSt2U8n3CRE1en5dvF6LtxBQr9DUdysUfz6t+xejH64q7ukzZIfoSmmHeiNiZFZvZ6oOlAIYBtqHyVGVcs+WWrOtIBYIDlulcQM2DYqmVfG1pggU+bbgQiRRSHUfCNGAx9duWnUiMVjgMIZIqQjmsqBObRdSNIoiZqTKl2f4iCV5LLeQkkznT6gBNTAds1TjYBPWbenUS1wtNm6wjLHJNIhOTUGk79olzKBja3yGBH04rgeyR2VxDaTZB/RuTJjxeN6I/7NOPvGBAfzzCPnanIn82IH+uteKrnYZd51wGWLge49uyVciCnVFrICJ4WkB1DUQxwJ9qGjlsM3MTyDml4pLASu4Kyup1uENF3eN1I33iM32sXTr6+KPumEifAH/k/nSFCS7ZaQpzxHc2R+APyF9qonkJmfswB0Kze5sj+ETmCPrk45GdqX326rLvT8b+8Nx+YWUJD4QPb4D2d/ZGOPFT1f/sDRRc6Y3pTg40YD+ReU4K+vAGyDM81z/UG9HYS18oahUof4NiWhefE0FKuPXcqSfShFfKRi0CE+j0GRnmJ8nZewf5dBli/WLfSuF19zxDZvFNMgSqp08Ox1jnww1e/AM=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://www.draw.io/js/viewer.min.js"></script>


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
