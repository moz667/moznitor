# moznitor

A simple tool to analyze and monit the home lan

## La idea

Despues de pasarme una hora viendo videos y leyendo documentacion de nagios (que horror y que mal esta explicado) he pensado que lo que necesito para la lan local es algo mas sencillo, solo hacer health check de distintos servicios y notificar si hay algun problema con ellos asi que se me ocurrio que puedo hacerlo mas divertido si lo hago yo mismo.

La idea pasa por crear un pequeño docker (lo mas pequeño posible) que sirva informacion del estado de los servicios locales. Esta informacion sera una estructura de datos con estos servicios y su estado actual almacenado en un archivo (json imagino) con esta informacion:

```json
[
    {
        "service": "Servicio 1", 
        "status": "OK|KO",
        "last-check": "2024-09-16 06:41:23"
    },
    {"service": "Servicio 2", "status": "OK|KO", "last-check": "2024-09-16 06:41:24"},
    {"service": "Servicio N", "status": "OK|KO", "last-check": "2024-09-16 06:41:25"}
]
```

Tener tambien un proceso que recorra esos archivos y notifique si alguno esta KO o si lleva mas de `X` horas sin comprobar el estado (`last-check`).

Esto deberia ser bastante sencillo y es en esencia lo que necesito, tendremos que completar los archivos de datos de estado que con un poco de scripteo y programar que se ejecuten cada cierto tiempo con el cron, lo cual tampoco deberia ser un problema.

## Enlaces

* [The smallest Docker image to serve static websites](https://lipanski.com/posts/smallest-docker-image-static-website)
    * [docker-static-website by @lipanski](https://github.com/lipanski/docker-static-website)

