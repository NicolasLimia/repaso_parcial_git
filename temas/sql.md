# SQL (BASE DE DATOS)

  <img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/dd3ceecd-a0cd-44cf-833a-91cf0095ee5c" />
  
En esta catedra trabajaremos principalmente con **Postgres** como sistema y **Dbeaver** como cliente.

![](https://es-wiki.ikoula.com/images/a/a3/Postgre.png)

![](https://avatars.githubusercontent.com/u/34743864?s=280&v=4)

Con SQL (Base de datos) podemos:
- Almacenar información de forma organizada.
- Facilitar la busqueda, recuperación y gestion de datos.
- Son esenciales en sistemas de informacion, aplicaciones web, moviles y empresariales.

SQL (Structured Query Language) es un lenguaje de programación utilizado para gestionar bases de datos relacionales.  
Permite realizar consultas, insertar, actualizar y eliminar datos de manera eficiente. A continuación, se presentan algunos conceptos clave:

- **Base de datos:** Un conjunto organizado de datos que se pueden acceder y manipular.
- **Tabla:** Una estructura dentro de una base de datos que almacena datos en filas y columnas.
- **Consulta:** Una instrucción SQL que se utiliza para recuperar o manipular datos en una base de datos.

# Manipulación de tablas y bases de datos

**NOTA:** las expresiones en mayusculas no afectan a como la base de datos interpreta los comandos. (podria ir en minuscula si se quisiera)

## **Creacion de Base de datos**

- **CREATE DATABASE** mi_base_de_datos;

## **Creación de una tabla**

- CREATE TABLE empleados (  
____id INT PRIMARY KEY,  
____nombre VARCHAR(50),  
____departamento VARCHAR(50),  
____salario DECIMAL(10, 2)  
);

## **Inserción de datos**

- INSERT INTO empleados (id, nombre, departamento, salario)
  VALUES  
  (1, 'Juan Pérez', 'Recursos Humanos', 3000.00),  
  (2, 'Ana Gómez', 'Finanzas', 3500.00),  
  (3, 'Luis Martínez', 'IT', 4000.00),  
  (4, 'María López', 'Marketing', 3200.00);  

## **Eliminación de datos**

- DELETE FROM empleados WHERE id = 1;

## **Actualización de datos**

- UPDATE empleados SET salario = 3200.00 WHERE id = 2;

## **Actualización de columnas en una tabla**

- ALTER TABLE empleados ADD fecha_contratacion DATE;
- ALTER TABLE empleados DROP COLUMN fecha_contratacion;

## **Eliminación de una tabla**
- DROP TABLE empleados;
- DROP TABLE empleados CASCADE;

## **Quitar datos de la tabla**

- TRUNCATE TABLE empleados;

## **Eliminacion de una base de datos**

- DROP DATABASE mi_base_de_datos;

## **Consultar una tabla**

- SELECT * FROM empleados;
- SELECT nombre, salario FROM empleados;

## **Filtrado de resultados**

- SELECT * FROM empleados
WHERE departamento = 'IT';
- SELECT * FROM empleados
WHERE salario > 3000.00;
- SELECT * FROM empleados
WHERE nombre LIKE 'A%';

## **Ordenamiento de resultados**

- SELECT * FROM empleados
ORDER BY salario DESC;
- SELECT * FROM empleados
ORDER BY nombre ASC;
- SELECT * FROM empleados
WHERE departamento = 'Recursos Humanos'
ORDER BY fecha_contratacion DESC;

## **Agrupamiento de resultados**
- SELECT departamento, COUNT(*) AS total_empleados
FROM empleados
GROUP BY departamento;
- SELECT departamento, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento;

## **Funciones de agregación**
**NOTA:** Van despues del SELECT

- **COUNT():** Cuenta el número de registros en un grupo.
- **SUM():** Suma los valores de una columna en un grupo.
- **AVG():** Calcula el promedio de los valores de una columna en un grupo.
- **MIN():** Devuelve el valor mínimo de una columna en un grupo.
- **MAX():** Devuelve el valor máximo de una columna en un grupo.

## **JOINS**

-SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados
INNER JOIN departamentos ON empleados.departamento = departamentos.id;}  

SIN JOIN:
-SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados, departamentos
WHERE empleados.departamento = departamentos.id;

## **Subconsultas**
-SELECT nombre, salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);

## **Consultas avanzadas**
-SELECT empleados.nombre, departamentos.nombre AS departamento, AVG(empleados.salario) AS salario_promedio
FROM empleados
INNER JOIN departamentos ON empleados.departamento = departamentos.id
GROUP BY empleados.nombre, departamentos.nombre;

# Primary Keys y Foreign Keys

## Primary Keys (Claves Primarias)
Una primary key es una columna o conjunto de columnas que identifica de manera única cada fila en una tabla.  
No puede contener valores nulos y debe ser única para cada registro.  
Se utiliza para garantizar que no haya duplicados en la tabla y para establecer relaciones con otras tablas.  
  
EJ:  
- CREATE TABLE empleados (id **SERIAL PRIMARY KEY**, nombre VARCHAR(50), departamento VARCHAR(50), salario DECIMAL(10, 2));

## Foreign Keys (Claves Foráneas)
Una foreign key es una columna o conjunto de columnas en una tabla que hace referencia a la primary key de otra tabla.  
Se utiliza para establecer y reforzar la relación entre las dos tablas.  
Las claves foráneas permiten la comunicación entre tablas, asegurando que los valores en la columna de la clave foránea coincidan con los valores en la columna de la clave primaria de la tabla referenciada.  
Es decir, que de alguna manera una clave foránea en una tabla apunta a una clave primaria en otra tabla.  
  
EJ:
- CREATE TABLE departamentos (id SERIAL PRIMARY KEY, nombre VARCHAR(50));  
CREATE TABLE empleados (id SERIAL PRIMARY KEY, nombre VARCHAR(50), departamento INT, salario DECIMAL(10, 2), **FOREIGN KEY** (depto_id) REFERENCES departamentos(id));
  
