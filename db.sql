create database movierental;

create type disponibilidad as enum ('disponible','agotado','solo por lanzamiento');
create type clasificacion as enum ('acción','comedia','drama','terror');


create table cliente(
	id serial primary key,
	nombre varchar(50) not null,
	contacto varchar(15),
	direccion varchar(20)
);

create table pelicula(
	id serial primary key,
	titulo varchar(50) not null,
	genero varchar(30) not null,
	director varchar(30),
	anio_lanzamiento date,
	disponibilidad disponibilidad,
	precio_alquiler numeric(5,2)
);

create table alquiler(
	id serial primary key,
	id_cliente int,
	id_pelicula int,
	fecha_ini timestamp,
	fecha_devolucion timestamp,
	costo_total numeric(5,2),
	foreign key (id_cliente) references cliente(id),
	foreign key (id_pelicula)references pelicula(id)	
);

create table pagos(
	id serial primary key,
	fecha timestamp,
	monto numeric(5,2),
	id_cliente int,
	foreign key (id_cliente) references cliente(id)
);

create table categoria(
	id serial primary key,
	clasificacion clasificacion,
	id_pelicula int,
	foreign key (id_pelicula)references pelicula(id)
);

create table sucursal(
	id serial primary key,
	direccion varchar(50) not null,
	id_cliente int,
	id_pelicula int,
	id_categoria int,
	id_alquiler int,
	id_pagos int,
	foreign key (id_cliente) references cliente(id),
	foreign key (id_pelicula)references pelicula(id),
	foreign key (id_categoria)references categoria(id),
	foreign key (id_alquiler)references alquiler(id),
	foreign key (id_pagos)references pagos(id)
);
