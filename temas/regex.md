# Regex

![](https://user-images.githubusercontent.com/5418178/175823761-ee7996b9-57be-4abf-be93-0ad25e7f37f0.png)

## **Usos**

- Validación de formularios
- Busqueda avanzada de texto
- limpieza de datos a gran escala
- debugging de servidores
- refactorizar código

## **Expresiones**

- **OR ( | ):**
  - "Y"|"T"

- **OR de grupos (con parentesis):**
  - (palabra1|palabra2)

- **Comodín (cualquier caracter):**
  - .
  - h.la **->** hala, hxla, hula, hola, hnla

- **Colecciones []:**
  - [CV]aso **->** Caso, Vaso

- **Rangos [a-z]:**
  - [m-z] *dentro del rango*
  - [^m-z] *fuera del rango*

## *TOKENS**

- **.** ____________Cualquier carácter

- **\n** ___________Carácter de nueva línea

- **\t** ___________Carácter de tabulación

- **\s** ___________Cualquier carácter de espacio en blanco (incluye \t, \n y otros)

- **\S** ___________Cualquier carácter que no sea un espacio en blanco

- **\w** ___________Cualquier carácter de palabra (letras mayúsculas y minúsculas del alfabeto latino, números del 0-9 y _)

- **\W** ___________Cualquier carácter que NO sea de palabra (el inverso de \w)

- **\b** ___________Límite de palabra: la frontera entre \w y \W, coincide en los espacios entre caracteres

- **\B** ___________No-límite de palabra: el inverso de \b

- **^ (dentro de colección)** _____Niega el contenido. Complemento.

- **^ (fuera de colección)** ______El inicio de una línea

- **$** ____________El final de una línea

- \ ____________El carácter literal \


## **Cuantificadores {}**

cantidad de caracteres seguidos, por ejemplo:
   - z{4} **->** zzzz
   - z{2, 4} **->** zz zzzz

# GREP

![](https://user-images.githubusercontent.com/20771591/221402501-da4fa88c-977a-4a9e-875e-8d831205cdcc.png)

Es una herramienta que nos permite encontrar un patron dentro de un archivo.

**Estructura:**

- **grep** [*opciones*] [*patron/regex*] [*archivo*]

## **Algunas Opciones**

- **-i** ___________Ignora el case.
- **-n** ___________IgnoraMuestra el número de línea.
- **-w** ___________IgnoraCoincide solo con palabras completas, no con subcadenas.
- **-v** ___________IgnoraMuestra todas las líneas que NO contienen el patrón.
- **-r** ___________IgnoraBusca el patrón en todos los archivos dentro del directorio y sus subdirectorios.
- **-c** ___________IgnoraMuestra el número de líneas que contienen el patrón.
- **-l** ___________IgnoraMuestra solo los nombres de los archivos que contienen el patrón, no las líneas coincidentes.

# SED

Es una herramienta muy poderosa para procesar y manipular texto.

**Estructura:**

- **sed** [*script*] [*archivo*]

- **sed** 's/patron/reemplazo/g' [*archivo*]


## **Algunas Opciones**

- **-i** _______________________Modifica el archivo
- **-e** _______________________Concatena operaciones
- **-r** _______________________Usa expresiones regulares extendidas
- **Nd** _______________________Elimina la N-ésima línea
- **/patron/d** ________________Elimina las líneas que matchean
- **/patron/p** ________________Imprime las líneas que coinciden
- **s/patron/reemplazo/g** ____Aplica la sustitución en todas las coincidencias
- **s/patron/reemplazo/I** ____Ignora el case




