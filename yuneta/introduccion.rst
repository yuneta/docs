Filosofía
=========

En Yuneta buscamos modelos (patterns) que nos permitan representar y visualizar todo tipo de realidades.

Modelo Entidad/Relación
-----------------------

Describimos la realidad clasificándola en **Entidades** y en las **Relaciones**
existentes entre dichas entidades.

.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T18:10:34.238Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;yp0bdQQ8UT_IliztSpCL\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vddb5swFP01PFYCDIQ8hjTpXipN46GPk4tvgjWDqXES0l8/E9sBh7TrtkrbtEqRYh/fLx/bRxcPLavuTuCmvOcEmBf6pPPQrReGQRSGXv/zyVEjSWqAraBEQ/4A5PQZjKdFd5RAazANSc6ZpI0LFryuoZAOhoXgB9dswxlxgAZvYQLkBWZT9IESWWo0jf0B/wR0W9rMgW9WKmyNDdCWmPDDCEIrDy0F51KPqm4JrCfP5WX9wuq5MAG1fIvDrFlku3X9fJs/PWQ5ue9m5OuNibLHbGc27IUJU/EyQvd90fJomEiedn2l2YbX8qY9ndNCGQRJ0w2LarQ1/8wa/34U+l5h/Q0uXIe1AMhB0M00+6qWlGBicypidVq3FAVPynvZ9ESqi/73PC9stkfxdiJ/lfPQ2U6oXogSEjXJDiWVkDe67oPSMoWVsmJqFvQbpowtOePi5Ic2aQFFofBWCv4NRiuPaRwpcbC5xs/TvjUQEroRZJ7rHfAKpDgqE7s6T7XL0WqikZLDoESBlZdypEKpwbARv+059KAPamAk4ifkIvyQiw+5+LM8n7P9Q3IBAYlhdk0u5skM4eR95CKK479MLtBELr4AwwX1lsjLUD3ltyaLvmdTs4LhtqVaYrGQU3jMtjrJNa4o6zc+XB29kJvwoZ3rFjOIXyO95TthruSrfZMqbQvyx4IJxOkyp0c4OqL4yglZTCj6JN27vem1YzMZPnN6epLmhqD53LkhaBa5IfS+jde4l7wIFEUXgcKLQJqYSaDTLTpv+9rFUtOhJdbmw4cFWn0H&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>

Entidades
---------

Describimos las **entidades** con el modelo **Role**/**instancia**.

Este modelo también lo podemos nombrar como:

    - **Clase**/**objeto**
    - **Esquema**/**registro**
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


Intercambio de Mensajes
-----------------------

Las **entidades** intercambian **mensajes** a través de sus **relaciones** o **enlaces**.

Patrones de comportamiento:


.. raw:: html

    <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2020-09-06T21:19:54.663Z\&quot; agent=\&quot;5.0 (X11)\&quot; etag=\&quot;M1s8XYUlW0dld-rKjjSt\&quot; version=\&quot;13.6.6\&quot;&gt;&lt;diagram id=\&quot;jgSpJcI_9LrdYe7ERkBn\&quot; name=\&quot;Page-1\&quot;&gt;7Vptc9M4EP41+YhGq9XbfoRCgZvjgOkc3H10YjUxuHFrO7S9X3/rxkriOtCkNLQpzXSm9kr2OrvPPnpWzgAPTi5el8np5F2RhnygZHoxwJcDpUArNWj+ZHo5t1jfGsZllraTloaj7L/QGmVrnWVpqDoT66LI6+y0axwV02kY1R1bUpbFeXfacZF3vZ4m49AzHI2SvG/9nKX1ZG71Ri7tb0I2nkTPINuRkyRObg3VJEmL8xUTvhrgQVkU9fzo5OIg5E3wYlzm1x1+Z3TxYGWY1ptcEP6cvj2D4+H74YfyxT9/49u/3h09a+/yLcln7RduH7a+jBEYl8XstJ0WyjpcrIt7MozTZf+5YPFtGSahOAl1eclT4o0MzS+5jJk38/PzZbwRWneTlVij9IJWP7pNe5vy8cLVMip80AZmfZCqd18mH5Pk88dPX/+V793rL2d/vHlGNwcpTNPnDdr4bJQnVZWNBvhiUp+wn5fAh1VdFl/DQZEX5dUFeHho+bMYidhCtvQD+KPUhbQD4H6YV8IYUbsaxWgrQ57U2bcu7NeFsvXwocj48RZZVEBCInorpTagrTOdpCIKjagN48MAKnMtVVUxK0ehveUqhq958U44g2SiJ7+Nkzopx6HuObmCxCJet0cJbFBLfBsmLj55cT7J6nB0moyakXPmzi5exmWSZpz/FcSQS6VzPHac5fmKPTXBp3odxrwa4hXGtkNUr8r7mIqlqgSBM4qMkUZ7R6pXuV4LpZFHOB/SWI19BBIITdjcxBPfi/yOyhjUr6tjta917L3QxpAH0oCS09apMKeE1czG5JSTmjN/uzJW0glJnHPliCQ5qbbxsus61mtgYvO6qbzi6lss8WLPZkUceFZdiZfnPIGzfrEcbGTHvM6XtsMyhKNQZser0+y4+V/NhtWozIbZdBz98veYu57P6KGWy7W+mVPunAXiKK/DhiWRds54zi30SMBJQUzJBN4hFznYPnyBmZ0kWpQIiuLqcfccYJ844Gc5oFFdljHuJVmD19h6YwoALQDIovfKgjewhY9dE4B7wsjNGNGCNJc7knLOmhiiy9gfCdRM3+CJWz4Z+X1rkCgQgESsLQwqh5GaN/Oya5j4J5jcDBMlPCtX1njzWu/kj4Wfk6j5wGlvrXK3RYkXwGThpPe8gkCs38287BglsR++LzVxOhvmWTXZIzFBQlkC7dA1a5DqLgzohCHgJFueqUj3Gw7DM6zlSbrpT5ga7k9sqN+oI1zUouUO3bLAt06TRtNl7P1qGM26TuCR5u8yyjIuH2m57dIgtV3E9oEmyNwvuRZlGsq75dWf3Q7cgmlRcSINL4rcZqNR0F2clWKBjl5bLZEFnvS2h4SH09aZTbTYI6nUzZh2vwrZrlNJt9LSq5XzfXW9l1qapFjNt+3usF8JHzSS11hkIUxob6umkTs7Lz0oy9DxqLdys2M5HUH6BJQfvotxQjnvPEj06PS1dzGsrYUFQ8T+wEvO8+2Qwu03M4J3gAie2cRt5WXXQPn9tBuAEU3LA5a8NJKQHjLl63U7sb9Qu5XhbBaqem/VmyJhADRJqaVhjdVVbwBeSMvijptkb4BXiwes3vSdvWB/xKROSnCBAzUlSdrF8on5dk5oqR05ahZnvHb7bTZcPRiDDXEjO1LbeNkxpZt73kpLptX5Hrd7Tb8ATUOgGtlGsruxBtoKy6uGRUvKWh9flj/MnTXztLN2fWftgSz+fLr8Sdu88pc/DMRX/wM=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
    <script type="text/javascript" src="https://app.diagrams.net/js/viewer-static.min.js"></script>


Datos en Mensajes
-----------------

El modelo de datos usado en los mensajes, tanto internamente como externalmente,
tanto en persistencia como en transporte, es el de **clave**/**valor**.

Yuneta puede añadir además el modelo **serie**/**tiempo** a los mensajes transportados.

TODO: grafica node--[key:value]--node

Si nombramos a las componentes:
    node(id)--[key:value]--node(id)
    node(id)--[id:value]--node(id)

Codificación y Persistencia
---------------------------

Todos los modelos están representados en JSON, tanto en memoria como en disco,
usando bases de datos **Jerárquicas** y **Gráficas**, de **Clave**/**Valor** y **Serie**/**Tiempo**.

CRUDLU
------

Las operaciones básicas en las **entidades** son el clásico CRUD (Create, Read, Update, Delete).
Pero al añadir las **relaciones** entre entidades, nesitamos añadir las operaciones:

    * **Link**
    * **Unlink**

**CRUDLU**: (**Create**, **Read**, **Update**, **Delete**, **Link**, **Unlink**)






