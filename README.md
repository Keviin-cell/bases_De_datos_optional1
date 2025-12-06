# 🚀 Despliegue de Base de Datos AeroGalaxy con Docker, PostgreSQL y pgAdmin

Este proyecto muestra el proceso de creación y despliegue de una base de
datos para el sistema **AeroGalaxy**, utilizando contenedores Docker
para ejecutar **PostgreSQL 14** y **pgAdmin 4**.\
El objetivo es configurar el entorno de base de datos, crear las tablas
necesarias e insertar datos para su posterior administración
y consulta.

## 📌 Tecnologías utilizadas

-   **Docker** para el despliegue de contenedores\
-   **PostgreSQL 14** como motor de base de datos\
-   **pgAdmin 4** como herramienta gráfica de administración\
-   Scripts SQL (DDL y DML) para la creación e inserción de datos

## 🐘 1. Despliegue del contenedor PostgreSQL

Se ejecuta un contenedor con la imagen oficial de PostgreSQL, definiendo usuario, contraseña y puerto de acceso.

``` bash
docker run -d --name aerogalaxy1 \
  -e POSTGRES_USER=aerogalaxy \
  -e POSTGRES_PASSWORD=aerogalaxy_db \
  -p 5432:5432 \
  postgres:14
```

## 🖥️ 2. Despliegue del contenedor pgAdmin 4

Se crea un contenedor para administrar PostgreSQL mediante interfaz web.

``` bash
docker run -d \
  -p 5050:80 \
  --name aerogalaxypg1 \
  -e "PGADMIN_DEFAULT_EMAIL=usuario@aerogalaxy.com" \
  -e "PGADMIN_DEFAULT_PASSWORD=galaxy#445" \
  dpage/pgadmin4
```

Acceso:

    http://localhost:5050

## 🗄️ 3. Creación de tablas (DDL)

Dentro de la base de datos aerogalaxy, se crean las tablas:

-    reserva – registro de reservas de misiones espaciales

-    carga – información sobre la carga transportada en cada misión

-    notificacion – mensajes enviados a los usuarios sobre sus reservas

El script completo incluye tipos de datos apropiados y claves primarias con SERIAL.



## 📥 4. Inserción de datos (DML)

Se insertan 10 registros por tabla, todos coherentes con el dominio AeroGalaxy, para permitir pruebas de consultas y administración.


## 📦 Resultado

El entorno final incluye:

-   Servidor PostgreSQL corriendo en Docker\
-   Administración visual desde pgAdmin\
-   Base de datos creada y estructurada\
-   Datos cargados para pruebas y validación

Proyecto académico -- Opcional 1\
Bases de Datos -- Universidad del Valle
