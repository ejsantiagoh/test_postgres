-- Consultas bd movierental

-- 1. Calcular los ingresos generados por cada sucursal en el ultimo mes.
SELECT s.id, s.direccion, SUM(a.costo_total) AS ingresos
FROM sucursal s
LEFT JOIN alquiler a ON s.id = a.id_sucursal
WHERE a.fecha_inicio >= '1 month'
GROUP BY s.id, s.direccion
ORDER BY ingresos DESC;

-- 2. Consultar el cliente con el mayor monto total de pagos realizados.
SELECT c.id, c.nombre, SUM(p.monto) AS total_pagos
FROM cliente c
JOIN pagos p ON c.id = p.id_cliente
GROUP BY c.id, c.nombre
ORDER BY total_pagos DESC
LIMIT 1;

-- 3. Obtener el porcentaje de peliculas alquiladas por genero.
SELECT p.genero, 
       COUNT(a.id) * 100.0 / SUM(COUNT(a.id)) AS porcentaje
FROM pelicula p
LEFT JOIN alquiler a ON p.id = a.id_pelicula
GROUP BY p.genero
ORDER BY porcentaje DESC;

-- 4. Identificar las sucursales con mayor numero de transacciones de alquiler
SELECT s.id, s.direccion, COUNT(a.id) AS num_transacciones
FROM sucursal s
JOIN alquiler a ON s.id = a.id_sucursal
GROUP BY s.id, s.direccion
ORDER BY num_transacciones DESC;

-- 5. Listar todas las peliculas disponibles para alquiler, 
-- incluyendo detalles como titulo, genero y precio.
SELECT p.titulo, p.genero, p.precio_alquiler
FROM pelicula p
WHERE p.disponibilidad = 'disponible'
ORDER BY p.titulo;

-- 6. Obtener el historial de alquileres de un cliente especifico,
-- incluyendo las fechas y los titulos de las peliculas.
SELECT c.id, c.nombre, p.titulo, a.fecha_inicio, a.fecha_devolucion
FROM cliente c
JOIN alquiler a ON c.id = a.id_cliente
JOIN pelicula p ON a.id_pelicula = p.id
WHERE c.id = 2
ORDER BY a.fecha_inicio DESC;


-- 7. Consultar las peliculas con precios de alquiler superiores a un valor especificado.
SELECT p.id, p.titulo, p.precio_alquiler
FROM pelicula p
WHERE p.precio_alquiler > 15
ORDER BY p.precio_alquiler DESC;

-- 8. Listar las peliculas lanzadas en los ultimos 5 años que estan disponibles para alquiler.
select titulo
from pelicula p 
join alquiler a on id_pelicula  = id
group by titulo;
