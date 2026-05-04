# Linux

[<img width="125" height="151" alt="image" src="https://github.com/user-attachments/assets/085e0efb-dc8c-4b37-bfe4-a843a51e53aa" />](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1280px-Tux.svg.png)

## Kernel

El Kernel es el núcleo que gestiona la comunicación entre el hardware y el software.

## Sistema operativo “UNIX-LIKE”

Un sistema operativo Unix-like es un tipo de software que funciona de manera parecida a Unix, un sistema operativo muy antiguo y famoso. 
Aunque estos sistemas no tienen que ser idénticos a Unix, siguen algunas de sus ideas y características principales tales como:

- **Estructura de archivos:**
   - Organizan los archivos en una forma jerárquica, parecida a un árbol, comenzando desde un directorio raíz (/) y dividiéndose en carpetas y subcarpetas. El directorio raíz (o root directory) contiene archivos y subdirectorios que contienen más archivos y subdirectorios y así sucesivamente. A diferencia de Windows, Linux tiene un único árbol con los archivos del sistema sin importar cuántos dispositivos de almacenamiento estén conectados a la computadora.
     Para navegar en esta estructura, se utilizan dos tipos de rutas:
     
       - **Rutas Absolutas (Absolute Pathnames)**: Estas rutas comienzan desde el directorio raíz (/) y siguen la jerarquía del sistema de archivos hasta llegar al archivo o directorio deseado.
       - **Rutas Relativas (Relative Pathnames)**: Estas rutas comienzan desde el directorio de trabajo actual en lugar del directorio raíz.

- **Interfaz de línea de comandos:**
    - Permiten a los usuarios escribir comandos en lugar de solo hacer clic con el ratón. Esto puede ser muy útil para realizar tareas y controlar el sistema.

- **Multitarea y multiusuario:**
    - Pueden manejar varias tareas al mismo tiempo y permitir que múltiples personas usen el sistema simultáneamente sin interferir entre sí.

- **Permisos y seguridad:**
    - Controlan quién puede acceder a qué archivos y recursos del sistema, asegurando que solo las personas autorizadas puedan hacer ciertas cosas.
- **POSIX [Operating System Interface (Interfaz de Sistema Operativo Portátil)]:**
    - Muchos sistemas Unix-like siguen un estándar llamado POSIX. Este estándar define reglas y especificaciones sobre cómo deben comportarse los sistemas operativos para garantizar la compatibilidad entre ellos. En otras palabras, POSIX asegura que los programas escritos para un sistema Unix-like puedan ejecutarse también en otros sistemas similares que cumplan con este estándar. Ejemplos de sistemas Unix-like incluyen **Linux** y **macOS**.

## **Shell VS Terminal:**

- **SHELL:**
    - Es un programa que actúa como intermediario entre quien usa la línea de comandos y el sistema operativo. Su función principal es tomar los comandos que escribe el usuario y traducirlos en acciones que el sistema operativo puede ejecutar.

## **Comandos**

- **pwd:** Muestra en que directorio estas.
- **ls:** Lista los elementos(archivos y directorios) de un directorio.
- **cd:** Cambia de directorio.
- **mkdir:** Crea un nuevo directorio.
- **touch:** Crea un archivo vacio.
- **cat:** Muestra el contenido de un archivo.
- **cp:** Copia archivos o directorios.
- **mv:** Mueve o renombra archivos.
- **rm:** Elimina archivos o directorios (en caso de directorios: rm -rf <directorio>).
- **man:** Muestra el manual de un comando.


