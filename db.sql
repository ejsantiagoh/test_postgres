create database movierental;

create type disponibilidad as enum ('disponible', 'agotado', 'solo por lanzamiento');
create type clasificacion as enum ('acción', 'comedia', 'drama', 'terror');

create table cliente (
    id serial primary key,
    nombre varchar(100) not null,
    contacto varchar(20),
    direccion varchar(200)
);

create table pelicula (
    id serial primary key,
    titulo varchar(100) not null,
    genero clasificacion not null,
    director varchar(50),
    anio_lanzamiento integer check (anio_lanzamiento > 1900),
    disponibilidad disponibilidad not null,
    precio_alquiler numeric(5,2) check (precio_alquiler >= 0)
);

create table sucursal (
    id serial primary key,
    direccion varchar(200) not null
);

create table inventario (
    id serial primary key,
    id_pelicula int,
    id_sucursal int,
    cantidad_disponible int check (cantidad_disponible >= 0),
    foreign key (id_pelicula) references pelicula(id),
    foreign key (id_sucursal) references sucursal(id)
);

create table alquiler (
    id serial primary key,
    id_cliente int,
    id_pelicula int,
    id_sucursal int,
    fecha_inicio timestamp not null,
    fecha_devolucion timestamp,
    costo_total numeric(5,2) check (costo_total >= 0),
    foreign key (id_cliente) references cliente(id),
    foreign key (id_pelicula) references pelicula(id),
    foreign key (id_sucursal) references sucursal(id)
);

create table pagos (
    id serial primary key,
    fecha timestamp not null,
    monto numeric(5,2) check (monto > 0),
    id_cliente int,
    foreign key (id_cliente) references cliente(id)
);

create table categoria (
    id serial primary key,
    clasificacion clasificacion not null,
    id_pelicula int,
    foreign key (id_pelicula) references pelicula(id)
);
