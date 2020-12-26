.. include:: roles.rst

Filosofía
=========

En Yuneta buscamos modelos (patterns) que nos permitan representar y visualizar todo tipo de realidades.

Reinos
------

Los sistemas de Yuneta se organizan en reinos.

Los reinos tienen tres propiedades:

    - Role      (clase del reino)
    - Name      (instancia del reino)
    - Domain    (owner del reino)

Interface del reino de Yuneta con la Web (url)
----------------------------------------------

El interface entre los reinos y las urls es: ::

    https://{Realm Name}.{Realm Role}.{environment}/{Realm Domain}

    ó

    https://{name}.{role}.{environment}/{domain}

Ejemplos

    - https://demo.saludatos.ovh/chris@gmail.com

        Sistema abierto donde usuarios anónimos pueden crearse 1 o varios reinos.

        El nombre del dominio, es decir el propietario, es el user invitado.

        ::

            https://demo.saludatos.ovh/chris@gmail.com

                - realm_domain  = chris@gmail.com   (domain,owner)
                - realm_role    = saludatos         (service class)
                - realm_name    = demo              (service instance)
                - environment   = ovh               (staging)

    - https://mulesol.siguerastro.com/mulesol

        Sistema cerrado, por ejemplo, el servicio de una empresa.
        Aquí el owner define qué usuarios pueden entrar.

        La parte final de la url sobra (dominio), porque es redundante.

        ::

            https://mulesol.siguerastro.com/mulesol

                - realm_domain  = mulesol           (domain,owner)
                - realm_role    = siguerastro       (service class)
                - realm_name    = mulesol           (service instance)
                - environment   = com               (production)

    - https://comunidad-madrid.saludatos.es/hospital-princesa

        Sistema cerrado con diferentes subdominios, por ejemplo una organización pública.

        ::

            https://comunidad-madrid.saludatos.es/hospital-princesa

                - realm_domain  = hospital-princesa (domain,owner)
                - realm_role    = saludatos         (service class)
                - realm_name    = comunidad-madrid  (service instance)
                - environment   = es                (production)

Términos del Reino
------------------

Los reinos tiene las propiedades de :realm_role:`Role` y :realm_name:`Name`.

El :realm_role:`Role` define la clase del reino.

El :realm_name:`Name` es una instancia de la clase.

La instancia del reino, tiene otra propiedad: :realm_domain:`Domain`,
que define quién es el propietario del reino.

La url del frontend define el reino (dominio) al que se quiere entrar.

El propietario de un reino puede añadir a su reino a otros usuarios
y definir qué tipo de autorizaciones tienen.

Modelo Entidad/Relación
-----------------------

Describimos la realidad clasificándola en **Entidades** y en las **Relaciones**
existentes entre dichas entidades.

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T18:10:34.238Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;yp0bdQQ8UT_IliztSpCL\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vddb5swFP01PFYCDIQ8hjTpXipN46GPk4tvgjWDqXES0l8/E9sBh7TrtkrbtEqRYh/fLx/bRxcPLavuTuCmvOcEmBf6pPPQrReGQRSGXv/zyVEjSWqAraBEQ/4A5PQZjKdFd5RAazANSc6ZpI0LFryuoZAOhoXgB9dswxlxgAZvYQLkBWZT9IESWWo0jf0B/wR0W9rMgW9WKmyNDdCWmPDDCEIrDy0F51KPqm4JrCfP5WX9wuq5MAG1fIvDrFlku3X9fJs/PWQ5ue9m5OuNibLHbGc27IUJU/EyQvd90fJomEiedn2l2YbX8qY9ndNCGQRJ0w2LarQ1/8wa/34U+l5h/Q0uXIe1AMhB0M00+6qWlGBicypidVq3FAVPynvZ9ESqi/73PC9stkfxdiJ/lfPQ2U6oXogSEjXJDiWVkDe67oPSMoWVsmJqFvQbpowtOePi5Ic2aQFFofBWCv4NRiuPaRwpcbC5xs/TvjUQEroRZJ7rHfAKpDgqE7s6T7XL0WqikZLDoESBlZdypEKpwbARv+059KAPamAk4ifkIvyQiw+5+LM8n7P9Q3IBAYlhdk0u5skM4eR95CKK479MLtBELr4AwwX1lsjLUD3ltyaLvmdTs4LhtqVaYrGQU3jMtjrJNa4o6zc+XB29kJvwoZ3rFjOIXyO95TthruSrfZMqbQvyx4IJxOkyp0c4OqL4yglZTCj6JN27vem1YzMZPnN6epLmhqD53LkhaBa5IfS+jde4l7wIFEUXgcKLQJqYSaDTLTpv+9rFUtOhJdbmw4cFWn0H&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

Entidades
---------

Describimos las **entidades** con el modelo

    - **Role**/**instancia**

Este modelo también lo podemos nombrar como:

    - **Clase**/**objeto**
    - **Tabla**/**registro**
    - **Grupo**/**elemento**

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T21:10:03.773Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;9595eyPu7XQuKGmr1_ea\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;AGwQhtg8YiEq3tmaDDHr\&quot; name=\&quot;Page-1\&quot;&gt;7Vldc9o4FP01PNaj74/HQEr7sDuzuzz02WDZaGoQFSaQ/fW9xjJGGNKQNlOaCZMZ7KOre+2joyOJDOhosfvk09X8b5eZckBQthvQ+wEhmBEyqP9Q9tggQgWg8DYLQR0wsf+bAKKAbmxm1lFg5VxZ2VUMztxyaWZVhKXeu20clrsyrrpKC9MDJrO07KNfbFbNG1Rx1OGfjS3mbWWMQssibYMDsJ6nmdseQfTjgI68c1VztdiNTFmT1/LS9BtfaD08mDfL6jkdJkX1efyvmObbvyo/zvOH5XTyAdMmzUNabsIbh6etHlsKCu82q3618AAPxldmd24s0mmboXtd0IlxC1P5R4gLvVqCgkJUuN12dGMZsHlMdRjmMMTFIXPHAlwEIq4h5QwnooSyw9zB2x+TI75tXNvwYb1X7x0EaLTadY1wVYTvfRZ7Cvxc2v/aNPCyTaY4O8C9ir3QkzEHlmCGwc1wO7eVmazSWd2yhUkO2LxaAKH3GC7T9aqZdrndGSB1WPg0syCSkSud3yej+ZRMhT5qu7ceOlm3hPal8/UwD3Nblkd9xsMhH90Bvq68+2qiFoQ4C+SM04Uta+GMvTET421+eJtjrT6t/VMF95V6pEWlEoYY1UQKprhUsq/MCyG/XKfPmLtmmd3VLgh3szJdr+0sHr4rqVq7jZ+ZH0+dKvWFeSqhbuJMFrnvk8TzMx7QYt6UaWUfYs8+x3eo8I+z+xnXjjpHCaGEc4Wp5pRpEjkSZiohAimhueBgRizO35ASUh4b8HVV6lYsqcYUtMOkojwu03DaK7NXzoGxl4uJXzS9F9sVUbFdoTydxR26WdtzNXuVq72qfbHawK61r/EQFrJz9gUfhF7FpX6gs+MFVYPWFGWCcEqI1q2ko/X1QswvtzH559oYvykb0yxRikrYJ1BUC0DG/nLiJ8+3LZZgJRATHGNBpH4y6yu7lPp5rWTpel5P9d8qnHbv+saVgxIOmyCBKeVSkvbod9joJ1JzKbRECNZVfvLUr6wk/b7evfH1LsiMqKTduDWbK3nby2FrDe/KfOvKVCLpDhWgTXbjwrz8u8i7MN+UMLlMunMonHz1jQuT/LkniHZS3c5GUCokFFeMwIYNnegCJ0wwxDAlmkjM1MtPFATDYYKhOpMUUREmEnBGwTTHSBJOToq8eFsIt92P7U149y8L+vE7&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>



Relaciones
----------


Describimos las **relaciones** también con modelos pares:


.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T19:22:41.329Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;gEdORfAG12TigFezVr62\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vhtb9owEP41+VgpOC/Ax8LaoknVWiGt2kcTnxNTg6lj3vbr58QOxCTpug1pVAKQsB/fnc/n5+4CXjBe7B4kXmWPggD3kE92XvDFQ6gXIuQVH5/sDRIPLJBKRgzkH4Ep+wlWs0LXjEBuMQMpIbhiKxdMxHIJiXIwLKXYumJUcOIAK5xCA5gmmDfRF0ZUZtBB5B/xCbA0q3bu+XZlgSthC+QZJmJbg4I7LxhLIZQZLXZj4EXw3Ljcd6weHJOwVB9RyB/n2TPGL8/fX3/43/oP87evkxtrZYP52h7YQzHX9kaEbQqn1d5GIn5bF56OqFiqm7y8p1st0ItXu+OiHqX2m1fC/26FncusT3HiKtxLgClIRpu7P2EiodpRh9Vs6jqi4YZz3aJlSCsUOQdA+q40pfVktM2YgunKeLrVWaWxTC24nvX0EOcrw3PKdkCKMzPOx4ILWRoKCIYBTTSeKyleobYSJwOYUb2SSkyYZk1trQ84Bv/g2Aakgl0n0XoH+uq8B7EAJfdaxCrorDcq+yqVYzPf1hLIJkVWy50KwzZl04PlI6v1wBL7D0iOriTvIvmEzcUn4HgLY2flu8l/GhXvVv6Xr3NxHDkc1+z9vxwPWzh+Gv4luS06op4lHOc5S9yoGwUgjYZ4EhRtVKyl5di7bUVhmYL6XWY2g1wLYtQSxAqTwLFiG9fdtsjaHZ4EK1PK3mEwHDp3GPRD14Q5ptWqd9YTQ2F4YgidGDJxaBgqL/pw7L+/++ha37rqm4Y3LGGfocad1jGaEF1UWuoY6Q9nvt9eFSnFkX+mPh6i/mX18fjK8y6ej3lBhE/4uEopRUnr4yqJZ3EUd9GcDM/VykMUXVYrH1xUK48/2Mqjayt/t5Xr6fG3vhE//mMS3P0C&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

Modelos:

    - **Padre**/**Hijo**

      El **padre** (o una factory) crea y se conecta al **hijo**.

    - **Servicio**/**Cliente**

      El **cliente** conoce y se conecta al **servicio**.


Transporte de Mensajes
----------------------

Las **entidades** intercambian **mensajes** a través de sus **relaciones** o **enlaces**.

Patrones de comportamiento:


.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T21:19:54.663Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;M1s8XYUlW0dld-rKjjSt\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vptc9M4EP41+YhGq9XbfoRCgZvjgOkc3H10YjUxuHFrO7S9X3/rxkriOtCkNLQpzXSm9kr2OrvPPnpWzgAPTi5el8np5F2RhnygZHoxwJcDpUArNWj+ZHo5t1jfGsZllraTloaj7L/QGmVrnWVpqDoT66LI6+y0axwV02kY1R1bUpbFeXfacZF3vZ4m49AzHI2SvG/9nKX1ZG71Ri7tb0I2nkTPINuRkyRObg3VJEmL8xUTvhrgQVkU9fzo5OIg5E3wYlzm1x1+Z3TxYGWY1ptcEP6cvj2D4+H74YfyxT9/49u/3h09a+/yLcln7RduH7a+jBEYl8XstJ0WyjpcrIt7MozTZf+5YPFtGSahOAl1eclT4o0MzS+5jJk38/PzZbwRWneTlVij9IJWP7pNe5vy8cLVMip80AZmfZCqd18mH5Pk88dPX/+V793rL2d/vHlGNwcpTNPnDdr4bJQnVZWNBvhiUp+wn5fAh1VdFl/DQZEX5dUFeHho+bMYidhCtvQD+KPUhbQD4H6YV8IYUbsaxWgrQ57U2bcu7NeFsvXwocj48RZZVEBCInorpTagrTOdpCIKjagN48MAKnMtVVUxK0ehveUqhq958U44g2SiJ7+Nkzopx6HuObmCxCJet0cJbFBLfBsmLj55cT7J6nB0moyakXPmzi5exmWSZpz/FcSQS6VzPHac5fmKPTXBp3odxrwa4hXGtkNUr8r7mIqlqgSBM4qMkUZ7R6pXuV4LpZFHOB/SWI19BBIITdjcxBPfi/yOyhjUr6tjta917L3QxpAH0oCS09apMKeE1czG5JSTmjN/uzJW0glJnHPliCQ5qbbxsus61mtgYvO6qbzi6lss8WLPZkUceFZdiZfnPIGzfrEcbGTHvM6XtsMyhKNQZser0+y4+V/NhtWozIbZdBz98veYu57P6KGWy7W+mVPunAXiKK/DhiWRds54zi30SMBJQUzJBN4hFznYPnyBmZ0kWpQIiuLqcfccYJ844Gc5oFFdljHuJVmD19h6YwoALQDIovfKgjewhY9dE4B7wsjNGNGCNJc7knLOmhiiy9gfCdRM3+CJWz4Z+X1rkCgQgESsLQwqh5GaN/Oya5j4J5jcDBMlPCtX1njzWu/kj4Wfk6j5wGlvrXK3RYkXwGThpPe8gkCs38287BglsR++LzVxOhvmWTXZIzFBQlkC7dA1a5DqLgzohCHgJFueqUj3Gw7DM6zlSbrpT5ga7k9sqN+oI1zUouUO3bLAt06TRtNl7P1qGM26TuCR5u8yyjIuH2m57dIgtV3E9oEmyNwvuRZlGsq75dWf3Q7cgmlRcSINL4rcZqNR0F2clWKBjl5bLZEFnvS2h4SH09aZTbTYI6nUzZh2vwrZrlNJt9LSq5XzfXW9l1qapFjNt+3usF8JHzSS11hkIUxob6umkTs7Lz0oy9DxqLdys2M5HUH6BJQfvotxQjnvPEj06PS1dzGsrYUFQ8T+wEvO8+2Qwu03M4J3gAie2cRt5WXXQPn9tBuAEU3LA5a8NJKQHjLl63U7sb9Qu5XhbBaqem/VmyJhADRJqaVhjdVVbwBeSMvijptkb4BXiwes3vSdvWB/xKROSnCBAzUlSdrF8on5dk5oqR05ahZnvHb7bTZcPRiDDXEjO1LbeNkxpZt73kpLptX5Hrd7Tb8ATUOgGtlGsruxBtoKy6uGRUvKWh9flj/MnTXztLN2fWftgSz+fLr8Sdu88pc/DMRX/wM=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>


Contenido de Mensajes
---------------------

El modelo de datos usado en el contenido de los mensajes, tanto internamente como externalmente,
tanto en persistencia como en transporte, es el de **clave**/**valor**.

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-07T08:07:34.406Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;0MEsYJx_9QTOfOsSnzzm\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vhdb9owFP01eQQ5/owfgTZFk6qNIa3aY0YMSRswdUyB/fo52A4JsI5p7fqhSkgk515fX99zbF8lQIP55koly+xapqIIIEg3AboIIAwxhEH1A+nWIjRywEzlqYXAHhjnP4Ub6dFVnorSYRbSUhY6X7bBiVwsxES3sEQpuW67TWWRtoBlMhNHwHiSFMfoTZ7qzKIRAXt8KPJZ5mcOgbPME+/sgDJLUrluQOgyQAMlpbZP881AFFXx2nWJf2OtE1Nioc8ZkI06eKq3/V4Rr29GcX/Ivw473EZ5SIqVW3AAaWHi9afShDVZ660rBb1fSW/olDuiesbBpLDZG6sSJ5P2gFgJMRYqnzbd6Gz3T/pVej07P7nwk5tV2Pmdmy1gnQrUYlPh6yzXYry0E66NAA2W6Xlh3kLzWGol72raUB2oWTNXxgehTMwG5Gp4JeRcaLU1Ls6KMOtyThiOGGSIeH07eYcEGmuEKQaIUQKiyJrXe+0w0OWAhDyMzPCIh9R6ZE0VsS7jAFEEUAg5I07OTsqzOqc92+bBEf4X5Ps99lLsm+TO5Nssxmx48WfKZypJc0PuQBZS7cai6TTllFap50XRwqdwMqll0rCk9Acl9GnkYk68tkAwMgKhDGAcAsyO1BHhLsSIcYggAYRidKwOHnYxR5ATox4CjdqeSx7hhzyeWx6YVecFhYBRhjlGhLxZtcATajnkaZH2qjvZvE2KpCxzW99EaQ8v5EKcOsQb5Y9jSneEHR/vu1BxXiV+AR4jqJQr5YT4+NFoAs6EPmOTiLTVRxwT3mDNNw9NmjymRJHo/KHdfZwiy83wRea7rehvpwMBIc+CD2FX7kY1u4WDQBi0A0F2EMhW5ijQTjv1ss+SU3l9m42S5Gb07e47+Myubu8/DTt+HS/YmdyJ7XtqTfBBZ8Loa25NPq6e/92ZoOZVQznnr/m2QR/6eOHW5E3Jhb6r3uTM1gS96s4E+obxXzuTkD5VZ2Je959jrPv+oxa6/AU=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

Yuneta puede añadir además el modelo **serie**/**tiempo** a los mensajes transportados.

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-07T07:47:25.417Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;gsAqCyTfIaZaTPhRimG9\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vhbb9owFP41eQQltnPxY6FN0aRqY0ir9ugmDklrMHVMgf36OdjOhdCVab1ORUgkn4+Pj8/32ecIB44X20tBVvkVTylzgJtuHXjuAOAhAJzq66Y7jQSRAeaiSDXkNsCs+EXNTIuui5SWBtOQ5JzJYtUFE75c0kR2MCIE33TNMs7SDrAic9oDZglhffS6SGWu0ch3G3xCi3luV/ZcM7Ig1tgAZU5SvmlB8MKBY8G51E+L7ZiyKnndvMSPjNaBCbqUp0zIpwOUyd3ojMWb62k8muDvkwHWXh4IW5sNOyBgyt8o48qtilruTCqC+zW3A4NyT9SZMlAhbJvBKsUk6U6IBaUzKoqsbRbM97/+SIUHxnbRGzsgLaL2U4N6QR2rf96y0LEaI53sOmwg6bbCN3kh6Wylg9sosSoslwum3jz1WErB72qKYe3ogQrl4NGUezWR6gRQvqBS7JSJmQChr6cY8Xs+1O+bRkqePSF5W0bhMDTUECPgee294Vg9GJr/gnJ7st6K84rw05hTm1HHnD5NXlYwNuaMi/08mBIaZUlNamskSCJ6kz0Pueou65KL4BDjIHQR8lwU9oiO0BAgGGIAge/6AYJ92rE3RBgC7PsR9gHG0UtJwPuUwHNIAIWgohy4YRAijKDvf1hFgCOKOORimZ5VFVW9JYyUZaHzS4S08JIv6bFrtZX+OA7U5+iFu3cVF1Xg525NEE17BfqAHhUkXwujvj/feWqFOZVPnow+4S3WbOlv02QxQRmRxUM34GNkmRW+8WJ/3Gy9OBAQtCxYF3qjZla71h84Qm7XEQgPHOlE9BzttVNv+yQ5lVe3+ZSQ6+mPu5/u1/Dy9v7LZGD38YZ9xR3dvevG4oiMe3fR440FwB1+0bG+InrlvuKzprxEWwHbNSTAGL/nMgI/NfAKfcWHkkTwfzcWJ/YV8D21FcB2e//aVnjBc7UV6rX5J0SbN/8nwYvf&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

Codificación y Persistencia
---------------------------

Todos los modelos están representados en JSON, tanto en memoria como en disco,
usando bases de datos **Jerárquicas** y **Gráficas**, de **Clave**/**Valor** y **Serie**/**Tiempo**.

Ejemplo de topologías:

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-07T08:03:00.036Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;-g5nWAloUwzBcbZZ-DQh\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

CRUDLU
------

Las operaciones básicas en las **entidades** son el clásico CRUD (Create, Read, Update, Delete).
Pero al añadir las **relaciones** entre entidades, nesitamos añadir las operaciones:

    * **Link**
    * **Unlink**

**CRUDLU**: (**Create**, **Read**, **Update**, **Delete**, **Link**, **Unlink**)






