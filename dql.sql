-- Consultas bd movierental

-- 1. Calcular los ingresos generados por cada sucursal en el ultimo mes.
select id
from sucursal s 
where

-- 2. Consultar el cliente con el mayor monto total de pagos realizados.
select nombre, max(id_pagos)
from cliente c 
join pagos p on cliente  = id
group by nombre;

-- 3. Obtener el porcentaje de peliculas alquiladas por genero.
select id, titulo, avg(genero) as porcentaje
from pelicula p;

-- 4. Identificar las sucursales con mayor numero de transacciones de alquiler
select id 
from sucursal s 
join alquiler a  on sucursal  = id
group by id s;

-- 5. Listar todas las peliculas disponibles para alquiler, 
-- incluyendo detalles como titulo, genero y precio.
select titulo, genero, precio_alquiler 
from pelicula p ;

-- 6. Obtener el historial de alquileres de un cliente especifico,
-- incluyendo las fechas y los titulos de las peliculas.
select  id
from  sucursal s 

-- 7. Consultar las peliculas con precios de alquiler superiores a un valor especificado.
select id, titulo, precio_alquiler 
from pelicula p 
where precio_alquiler > 18;

-- 8. Listar las peliculas lanzadas en los ultimos 5 años que estan disponibles para alquiler.
select titulo
from pelicula p 
join alquiler a on id_pelicula  = id
group by titulo;
