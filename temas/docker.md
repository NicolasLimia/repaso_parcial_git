# Docker

![](https://marketplace.donweb.com/_next/image?url=https%3A%2F%2Fcloudapps.donweb.com%2Fassets%2F5208bbb7-6c0c-4f8e-b997-c3d7c70b2056%3Ffit%3Doutside&w=256&q=75)

Con Docker podemos *configurar un entorno de desarrollo* sin que nos tome muchas horas, dias o hasta incluso semanas.  
Solucionamos problemas de compatibilidad del estilo **En mi maquina funciona** ya que suelen variar en:
- Distintos sistemas operativos.
- Distintas versiones de librerias.
- Distintas variables de entorno.
- Distintas dependencias del sistema. *(Versiones diferentes de un programa "postres:16 vs postgres:18.1")*

## **Beneficios principales**

- **Portabilidad** entre entornos (dev, test, prod).
- **Aislamiento** de procesos.
- Uso **eficiente** de recursos (a diferencia de las máquinas virtuales).
- **Facilidad** para desplegar y escalar aplicaciones.


## **Componentes de Docker**

- **Docker Engine:** es el motor central de Docker, compuesto por un daemon que se ejecuta en segundo plano. Se encarga de crear y ejecutar contenedores, gestionar imágenes, redes y volúmenes. Es el componente que permite que Docker funcione.

- **Docker Hub:** es un servicio en línea donde los usuarios pueden subir y descargar imágenes Docker. Funciona como un repositorio público o privado que permite compartir imágenes entre distintos equipos o proyectos.

- **Dockerfile:** es un archivo de texto que contiene una serie de instrucciones declarativas para construir una imagen Docker. En él se especifica el sistema base, las dependencias, el código a copiar, variables de entorno y el comando que se ejecutará al iniciar el contenedor.

- **Imagen:** es una plantilla inmutable que contiene todo el entorno necesario para ejecutar una aplicación (SO, librerías, binarios, etc.). Las imágenes se crean a partir del Dockerfile y pueden ser compartidas y versionadas. No cambian mientras se usan.

- **Contenedor:** es una instancia en ejecución de una imagen. Representa una unidad de ejecución aislada, con su propio sistema de archivos, red y procesos. Al detenerse o eliminarse, no conserva los cambios salvo que se usen volúmenes.

## **Servicios y puertos**

- **Servicio:** Es un proceso que corre continuamente y escucha peticiones. Siempre esta esperando a que alguien le pida algo.
- **Puerto:** Es un punto lógico de comunicación. Es el *número de puerta* donde escuha un servicio.
   - **:80 HTTP**
   - :433 HTTPS
   - **:5432 Postgres**
   - :3306 My SQL
   - :6379 Redis
   - :3000 Tu App

## **Imagen VS Contenedor**

- Una **imagen** es el *template* (plantilla/definición estática) de lo que contendrá el contenedor.
- Un **contenedor** es una *instancia* en ejecución de esa imagen.


# Creación de imagenes (DockerFile)

Para crear una *imagen propia*, lo que debemos hacer es crear un archivo llamado **DockerFile** en el mismo directorio en el que vamos a correr Docker.

DockerFile es el manifiesto de tu aplicación, es un archivo de texto plano con instrucciones secuenciales.
- **Automatiza** la creación de entornos.
- Garantiza un entorno 100% **reproducible**.
- La imagen resultante es **identica** en todas las maquinas e iteraciones.

## **Instrucciones fundamentales de DockerFile**

FROM *alpine:3.18*  
WORKDIR */app*  
USER *node*  
  
COPY . .  *(origen del host, destino en el contenedor)*  
ADD *url.tar.gz /app*  
RUN *npm install*  
  
CMD [*"node","app.js"*]  

## **Volúmenes**

Nos permiten seguir guardando/recuperar información luego de que nuestro contenedor deje de correr.

**Estructura:**

docker run -d --name nombre_cualquiera **-v el_volumen:var/lib/destino** programa:version

# Docker Compose

Permite definir la infraestructura como código. Detectar volumenes a nivel superior asegura que el almacenamiento persista independientemente de cuantas veces se ejecute *'docker-compose down' o 'up'* y permite que multiples réplicas compartan exactamente el mismo estado fisico.  
**Docker Compose** es una herramienta que permite definir, configurar y ejecutar múltiples contenedores Docker como una única aplicación.  
Es ideal para entornos donde se requiere una arquitectura basada en varios servicios interconectados (por ejemplo: backend, base de datos, frontend, cache).  
  
Todo se gestiona desde un archivo YAML (docker-compose.yml), donde se describe la infraestructura de la aplicación, permitiendo abstraer detalles técnicos de la línea de comandos y facilitando el despliegue y mantenimiento del sistema.

**Características principales:**
- Define múltiples servicios en un único archivo.
- Administra volúmenes, redes y variables de entorno.
- Facilita la reproducción exacta de entornos.
- Permite escalar servicios con una sola instrucción.

## **Comandos básicos**
- **docker-compose up:** ________________________________levanta todos los servicios definidos. Puede usar el flag -d para correr en modo “detached”.
- **docker-compose down:** ______________________________detiene y elimina los servicios, redes y volúmenes asociados.
- **docker-compose build:** _____________________________construye las imágenes a partir de los Dockerfiles definidos.
- **docker-compose logs:** ______________________________muestra los logs de todos los servicios.
- **docker-compose ps:** ________________________________lista los servicios que se están ejecutando.
- **docker-compose exec *servicio comando*:** _________ejecuta un comando en un contenedor en ejecución.


## **Ejemplo básico de archivo docker-compose.yml**
version: '3.8'  
services:  
___**web**:  
____build: .  
____ports:  
______- "5000:5000"  
____volumes:  
______- .:/code  
____environment:  
______- FLASK_ENV=development  
___**redis**:  
____image: "redis:alpine"  

Este archivo lanza dos servicios: **web**, que se construye desde un Dockerfile local, y **redis**, que utiliza una imagen de Docker Hub.  
- **web** monta el código local como *volumen*, expone el puerto *5000* y establece una *variable de entorno*.


