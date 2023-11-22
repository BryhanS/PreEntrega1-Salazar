# Proyecto SQL creacion base de datos Celulares Apple

Este proyecto se realizará a razón de tener una base de datos capaz de guardar todos los datos de creación de nuevos productos en el catálogo de iphone.

### Objetivos:

- SKU de Celulares
- Consistencia en los datos
- Consultas rápidas y hacer conexiones con los diferentes excel de las áreas administrativas.

### Diagrama de Entidad Relacion:

![](./img/entidad-relacion.png)

### Tablas:

![](./img/tablas-1.png)
![](./img/tablas-2.png)

### Script SQL

Creacion de base de datos y tabla de celulares.

```
CREATE SCHEMA IF NOT EXISTS IphoneData;

USE IphoneData;

CREATE TABLE IF NOT exists Direccion (
	id_direccion int not null auto_increment,
    direccion varchar (255) not null,
    pais varchar (255) not null,
    ciudad varchar (255) not null,
    primary key (id_direccion)
);


CREATE TABLE IF NOT exists Clientes (
	id_cliente int not null auto_increment,
    dni varchar (8) not null,
    nombres varchar (255) not null,
    apellidos varchar (255) not null,
    id_direccion int,
    primary key (id_cliente),
    foreign key (id_direccion) references Direccion(id_direccion)
);

CREATE TABLE IF NOT exists Tienda (
	id_tienda int not null auto_increment,
    nombre_sucursal varchar (255) not null,
    id_direccion int,
    primary key (id_tienda),
    foreign key (id_direccion) references Direccion(id_direccion)
);


CREATE TABLE IF NOT exists sku (
	id_sku int not null auto_increment,
    nombre_sku varchar (255) not null,
    codigo_sku varchar (255) not null,
    precio float,
    primary key (id_sku)
);

CREATE TABLE IF NOT exists Celulares(

	id_imei int not null auto_increment,
	imei varchar (15) not null,
	modelo varchar (255) not null,
	capacidad varchar (255) not null,
	color varchar (255) not null,
    id_sku int,
    primary key (id_imei),
    foreign key (id_sku) references sku(id_sku)
);

```

### Script insert SQL

Creacion de insert sql

```
insert into Direccion(id_direccion,direccion,pais,ciudad)
VALUES
(1,"La direccion en Pueblo Libre","Peru","Pueblo Libre"),
(2,"La direccion en Miraflores","Peru","Miraflores"),
(3,"La direccion en Barranco","Peru","Barranco"),
(4,"La direccion en San Borja","Peru","San Borja"),
(5,"La direccion en Agustino","Peru","Aguatino"),
(6,"La direccion en Lima","Peru","Lima"),
(7,"La direccion en Surco","Peru","Surco");


insert into Clientes(id_cliente, dni, nombres,apellidos,id_direccion)
values
(1,66453513,"Pedro","Linares",2),
(2,28910873,"Luis","De Carpio",3),
(3,83819755,"Miguel","Salas",1),
(4,97308736,"Brigitte","Colsa",4),
(5,17113073,"Katia","Perez",5);


insert into Tienda(id_tienda,nombre_sucursal,id_direccion)
values
(1,"Tienda Lima",6),
(2,"Tienda Surco",7);

insert into sku(id_sku, nombre_sku, codigo_sku,precio)
values
(1,"iPhone Xr 128 Rojo","XR128ROJ",999),
(2,"iPhone SE 2020 64 Negro","SE264NEG",499),
(3,"iPhone Xs 256 Dorado","XS256DOR",1300),
(4,"iPhone 11 128 Blanco","11128BLA",1800),
(5,"iPhone 11 128 Morado","11128MOR",1800);

insert into Celulares(id_imei,imei,modelo,capacidad,color,id_sku)
values
(1,"899785403717701","iPhone Xr","128","Rojo",1),
(2,"965979360196480","iPhone SE 2020","64","Negro",2),
(3,"905133997837684","iPhone Xs","256","Dorado",3),
(4,"562607816352275","iPhone 11","128","Blanco",4),
(5,"303047736791084","iPhone 11","128","Morado",5);

```
