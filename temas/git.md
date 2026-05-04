# Git

![](https://avatars.githubusercontent.com/u/18133?s=200&v=4)

Git es un software muy importante a la hora de desarrollar, ya que nos permite controlar las versiones de los archivos de nuestro proyecto.

- **Version:** estado del archivo después de realizar un conjunto de cambios.

Con **Git** podemos:
- Volver a versiones anteriores.
- Facilitar el trabajo en equipo.
- Mantener un historial completo de quien cambio que y cuando.

**Respositorio:** es un directorio cuyo historial esta trackeado por Git.  Actúa como una base de datos que contiene toda la información necesaria para reconstruir el proyecto en cualquier estado previo.

## **Iniciar un repositorio**

- git init

## **Tipos de repositorios**

- **Repositorio Local:** Es la versión del repositorio que resides en tu propia computadora. Incluye todos los archivos del proyecto y el historial completo de commits. Puedes realizar cambios, hacer commits y gestionar ramas localmente sin necesidad de estar conectado a un servidor remoto.
- **Repositorio Remoto:** Es la versión del repositorio que se encuentra en un servidor accesible a través de Internet o una red local. Los repositorios remotos permiten colaborar con otros desarrolladores, compartir cambios y mantener una copia centralizada del proyecto. Los ejemplos más comunes incluyen plataformas como GitHub, GitLab y Bitbucket.

## **Ramas (branches)**

Es una linea independiente del desarrollo.  
Sirven para llevar distintas lineas de desarrollo paralelo.  
Luego se pueden mergear para unificarse.

## **Flujo básico**

- Modificar un archivo en tu directorio de trabajo.
- Agregar los cambios al staging area con **git add**.
- Confirmar los cambios con **git commit**.

 # Git Branches

 Es una linea de trabajo independiente. Permite hacer cambios sin afectr ek código main.

 **Usos:**
 - Desarrollar features nuevos.
 - Arreglar bugs.
 - Probar ideas sin riesgo.
 - Trabajar en paralelo con otros.

## **Procedimiento esperado**

- Crear branch
- Hacer cambios
- Hacer commit y push
- Crear PR
- Revisar PR
- Merge a main

## **Pull Request (PR)**

Es una solicitud para integrar cambios, se usa para revisar antes de mergear y permite recibir feedback del equipo.

**Tipos de estrategias (de peor a mejor):**
- Rama unica
- Main, Feature
- Main, Develop, Feature
- GitFlow (Main, Develop, Release, Hotfix, Feature)

## **Buenas prácticas**
- Pulls frecuentes
- Commits atómicos
- Comunicación con el equipo

## **Conflictos**

- Modificamos simultaneamente en la misma linea de un archivo.
- Eliminación de un archivo en una rama mientras es modificada por otra.

**¿Como Solucionar los conflictos?**
- Git status
- Corregir manualmente
- Commitear el cambio

## **Tipos de ramas**
- Master/Main
- Hotfix
- Release
- Develop
- Feature

# Comandos básicos de Git por tema

## **1. Configuración Inicial**
- **git config --global user.name "Tu Nombre":** __________________Configura tu nombre de usuario globalmente.
- **git config --global user.email "tu.email@dominio.com":** ______Configura tu correo electrónico globalmente.
- **git config --list:** __________________________________________Muestra la configuración actual.

## **2. Inicialización de Repositorio**
- **git init:** ___________________________________________________Crea un nuevo repositorio Git en el directorio actual.

## **3. Rastrear Archivos**
- **git add <archivo>:** __________________________________________Añade un archivo al área de preparación (staging area).
- **git add .:** __________________________________________________Añade todos los archivos modificados al área de preparación.
- **git status:** _________________________________________________Muestra el estado de los archivos en el repositorio (rastreados, modificados, en staging, etc.).
- **git rm --cached <archivo>:** __________________________________Elimina un archivo del área de staging sin eliminarlo del directorio de trabajo.

## **4. Stash (Guardar Cambios Temporales)**
- **git stash:** __________________________________________________Guarda los cambios no confirmados temporalmente.
- **git stash -u:** _______________________________________________Guarda cambios no confirmados y archivos no rastreados.
- **git stash list:** _____________________________________________Muestra la lista de stashes guardados.
- **git stash apply:** ____________________________________________Aplica el último stash guardado sin eliminarlo de la lista.
- **git stash pop:** ______________________________________________Aplica el último stash y lo elimina de la lista.
- **git stash drop:** _____________________________________________Elimina el último stash guardado.
- **git stash clear:** ____________________________________________Elimina todos los stashes guardados.

## **5. Confirmación de Cambios (Commits)**
- **git commit -m "Mensaje de commit":** __________________________Guarda los cambios en el repositorio con un mensaje descriptivo.
- **git commit --amend:** _________________________________________Modifica el último commit realizado (por ejemplo, para corregir el mensaje).

## **6. Historial**
- **git log:** ____________________________________________________Muestra el historial de commits.
- **git log --oneline:** __________________________________________Muestra el historial de commits en una sola línea por commit.

## **7. Sincronización con Repositorios Remotos**
- **git remote add origin <url>:** ________________________________Asocia el repositorio local con uno remoto.
- **git push origin <nombre-rama>:** ______________________________Sube los cambios locales en la rama actual al repositorio remoto.
- **git pull origin <nombre-rama>:** ______________________________Trae los cambios de una rama remota al local y los fusiona.

## **8. Ramas (Branches)**
- **git branch:** _________________________________________________Muestra las ramas actuales.
- **git branch <nombre-rama>:** ___________________________________Crea una nueva rama.
- **git checkout <nombre-rama>:** _________________________________Cambia a una rama diferente.
- **git checkout -b <nombre-rama>:** ______________________________Crea y cambia a una nueva rama.
- **git merge <nombre-rama>:** ____________________________________Fusiona la rama especificada con la rama actual. (Por ejemplo, el main con la branch actual)
- **git branch --set-upstream-to=origin/<rama>:** _________________Establece la rama remota de seguimiento para la rama actual.

## **9. Restaurar Cambios (Restore)**
- **git restore <archivo>:** ______________________________________Deshace los cambios locales no confirmados en el archivo, restaurándolo a la versión del último commit.
- **git restore --staged <archivo>:** _____________________________Quita un archivo del área de preparación sin perder los cambios locales.
- **git restore --source=<commit> <archivo>:** ____________________Restaura un archivo a su estado en un commit específico.
- **git restore .:** ______________________________________________Deshace los cambios no confirmados en todos los archivos del directorio actual.

## **10. Deshacer Cambios**
- **git reset <archivo>:** ________________________________________Elimina un archivo del área de preparación.
- **git reset --hard:** ___________________________________________Revierte el repositorio al último commit, descartando todos los cambios.
- **git checkout -- <archivo>:** __________________________________Deshace los cambios en un archivo que aún no ha sido añadido al área de preparación.

## **11. Clonación**
- **git clone <url>:** ____________________________________________Clona un repositorio remoto en el directorio local.

## **12. Etiquetas (Tags)**
- **git tag <nombre-etiqueta>:** __________________________________Crea una nueva etiqueta.
- **git tag:** ____________________________________________________Muestra todas las etiquetas.
- **git push origin <nombre-etiqueta>:** __________________________Sube una etiqueta al repositorio remoto.

## **13. Ver Cambios**
- **git diff:** ___________________________________________________Muestra las diferencias entre los archivos modificados pero no preparados para commit.
- **git diff --staged:** __________________________________________Muestra las diferencias entre los archivos preparados para commit y el último commit.
