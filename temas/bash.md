# Bash

![](https://camo.githubusercontent.com/791b9a6f6d30abb12973f05de913fdf51ea9bb898dde9b41b2d301460d04097e/68747470733a2f2f63646e2d696d616765732d312e6d656469756d2e636f6d2f6d61782f3235362f312a46454539386957696e6c5a42596b78424147384d76412e706e67)

**Bash** (Bourne Again Shell) es un intérprete de comandos y un lenguaje de scripting muy popular en sistemas operativos basados en Unix, como Linux y macOS.

- **Usamos Bash para automatizar cosas (comandos y scripts cortos)**

**Shell:** Un programa que interpreta comandos y los ejecuta. Es el intermediario entre vos y el sistema operativo.

**Terminal (o emulador de terminal):** La ventana donde escribís los comandos. Es la interfaz gráfica que muestra el shell.

**Bash (Bourne Again Shell):** El shell más común en Linux y macOS. Es un lenguaje de programación y un intérprete de comandos al mismo tiempo.

## **Permisos**

Cada archivo tiene permisos para tres grupos:

- **Owner (u):** El propietario del archivo
- **Group (g):** El grupo asignado
- **Others (o):** Todos los demás

Y tres tipos de permisos:

- **r (read):** Leer el archivo / listar directorio
- **w (write):** Modificar el archivo / crear/borrar en directorio
- **x (execute):** Ejecutar el archivo / entrar al directorio

## **Pipes |**

El **pipe (|)** conecta la **stdout** de un comando con la **stdin** del siguiente

- **| (pipe)**: Conecta la stdout de un comando con la stdin del siguiente. Ambos comandos corren "en paralelo".
- **&& (AND)**: Ejecuta el segundo comando solo si el primero retornó exit code 0 (éxito).
- **|| (OR)**: Ejecuta el segundo comando solo si el primero falló (exit code ≠ 0).
- **; (secuencia)**: Ejecuta comandos en secuencia sin importar el resultado del anterior.

## Variables

- **$ env o $ printenv:** Ver todas las variables.
- **$HOME:** Tu directorio home.
- **$USER:** Tu nombre de usuario.
- **$PWD:**  Directorio actual.
- **$PATH:** Dónde buscar ejecutables.
- **$SHELL:** Tu shell actual.

**VARIABLES EN SCRIPTS:**

- **Variables normales:**
  - *nombre="Script de ejemplo"*

- **Variables de solo lectura:**
  - *readonly PI=3.14159*

- **Exportar para subprocesos:**
  - *export MI_VARIABLE="valor"*

- **Parámetros del script:**
  - *echo "Nombre del script: $0"*
  - *echo "Primer argumento: $1"*
  - *echo "Segundo argumento: $2"*
  - *echo "Todos los argumentos: $@"*
  - *echo "Cantidad de argumentos: $#"*


## **Comparaciones (Strings vs Números)**

- **Strings:**
  - =
  - !=
- **Números:**
  - -eq_____*igual*
  - -ne_____*distinto*
  - -lt_____*menor que*
  - -gt_____*mayor que*
  - -le_____*menor o igual que*
  - -ge_____*mayor o igual que*

## **INPUT (READ)**

echo "¿Cómo te llamás?"  
**read** nombre  
echo "Hola $nombre!"

(**read** *var*)

## **Condicionales**

*if* [ condicion ]; *then*  
____echo "Algo"  
*elif* [ condicion ]; *then*  
____echo "Algo"  
*else*  
____echo "Algo"  
*fi* 


## **Resumen de espacios**

- **Asignación ( = ):** /*sin espacios*/ nombre="algo"
- **Test ( [] ):** /*con espacios*/
- **Test ( [[]] ):** /*con espacios*/
- **Arimetrica ( (()) ):** /*opcional*/


## **Arimetrica en Bash**

*resultado=$((n + m))*

## **Arrays**

- **Crear un Array:**
  - *var=(algo algo algo)*

- **Acceder a elementos:**
  - echo ${var[n]}__________un elemento
  - ${var[@]} o ${var[*]}___todos los elementos
  - ${#var[n]}______________longitud del array

## **Loops**

- **FOR:**

*for* **i** *in* **secuencia**; *do*  
____echo "$i"  
*done*

- **WHILE:**

*while* [ **condición** ]; *do*  
____echo "algo"  
*done*

- **UNTIL:**

*until* [ **condición** ]; *do*  
____echo "algo"  
*done*

## **Funciones**

- **Definir función (dos formas):**
    - saludar() {  
____echo "Hola $1!"  
}

    - function despedir {  
____echo "Chau $1!" 
}

- **Función con múltiples parámetros:**
    - sumar() {  
____local resultado=$(($1 + $2))  
}

- **Función con return (solo 0-255):**
    - es_par() {  
____if condicion; then  
________return 0    *(True)*  
____else  
________return 1    *(False)*  
____fi  
}

- **Usar funciones:**
    - saludar "Juan"
    - despedir "María"


