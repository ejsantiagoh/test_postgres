-- Inserciones bd_movierental

INSERT INTO cliente (nombre, contacto, direccion) VALUES
('juan', '+57 30000000', 'calle 4 -5'),
('marck', '+57 30040000', 'carrera 14 -5'),
('zuckerberg', '+57 30030000', 'avenida 4 -5'),
('Elon', '+57 30000100', 'calle 54 -5'),
('Musk', '+57 30200000', 'calle 4 -78'),
('Alvaro', '+57 30500000', 'avenida 2 -5'),
('Gustavo', '+57 30700000', 'carrera 44 -5'),
('Omar', '+57 30800000', 'carrera 65 -5'),
('Trump', '+57 30900000', 'avenida 21 -36'),
('Vladimir', '+57 30110000', 'calle 4 -5');

INSERT INTO pelicula (titulo, genero, director, anio_lanzamiento, disponibilidad, precio_alquiler) VALUES
('wettewt', 'acción', 'raul rodriguez', 2000, 'disponible', 12.10),
('hhhfgd', 'acción', 'lamine yamal', 2000, 'agotado', 12.10),
('dfhfd', 'drama', 'carlos inzagi', 2000, 'agotado', 12.10),
('nfgnjgf', 'comedia', 'jesus', 2008, 'disponible', 22.10),
('hregbf', 'acción', 'dara', 2010, 'disponible', 15.10),
('mdbddf', 'terror', 'kilyam', 2020, 'disponible', 32.10),
('hbf', 'comedia', 'mbappe', 2023, 'solo por lanzamiento', 50.10),
('fbdefdg fdv', 'comedia', 'hansi flick', 2011, 'disponible', 2.10),
('fgdr fd', 'acción', 'Enrique de la fuente', 2025, 'solo por lanzamiento', 3.10),
('dfgfg', 'drama', 'lorenzo', 2019, 'disponible', 12.10),
('wetgdsgsdtewt', 'acción', 'pellegrini', 2022, 'disponible', 13.10),
('dsgsr', 'acción', 'caletto ancelloti', 2023, 'disponible', 18.10),
('ergr', 'drama', 'dudamel', 2009, 'disponible', 12.70),
('asffe', 'comedia', 'robert lewandoski', 2008, 'disponible', 12.50),
('asfsf', 'acción', 'zlatan ibrahimovich', 2007, 'agotado', 17.10);

INSERT INTO sucursal (direccion) VALUES
('B. provenza 34-21'),
('B. cabecera 4-21'),
('B. venecia 14-21'),
('B. fontana 42-21'),
('B. Diamante 5-21');

INSERT INTO inventario (id_pelicula, id_sucursal, cantidad_disponible) VALUES
(1, 1, 5), (1, 2, 3), (1, 3, 0),
(4, 1, 2), (4, 4, 4),
(5, 2, 3), (5, 5, 1),
(6, 3, 2), (6, 4, 0),
(7, 1, 1), (7, 5, 2),
(8, 2, 4), (8, 3, 3),
(9, 4, 1), (9, 5, 0),
(10, 1, 2), (10, 2, 2),
(11, 3, 3), (11, 4, 1),
(12, 5, 2), (12, 1, 0),
(13, 2, 1), (13, 3, 2),
(14, 4, 3), (14, 5, 1),
(15, 1, 0), (15, 2, 0);

INSERT INTO categoria (clasificacion, id_pelicula) VALUES
('drama', 3),
('acción', 1),
('comedia', 4),
('terror', 6);

INSERT INTO pagos (fecha, monto, id_cliente) VALUES
('2025-05-15 08:30:00', 13.00, 1),
('2024-02-15 08:30:00', 13.00, 2),
('2024-07-15 08:30:00', 18.10, 3),
('2025-01-15 08:30:00', 13.00, 4),
('2024-05-15 08:30:00', 13.00, 5),
('2024-08-15 08:30:00', 18.10, 6),
('2024-05-15 08:30:00', 13.00, 7),
('2025-05-15 08:30:00', 12.50, 8),
('2024-10-15 08:30:00', 13.00, 9),
('2025-05-15 08:30:00', 12.50, 10);

INSERT INTO alquiler (id_cliente, id_pelicula, id_sucursal, fecha_inicio, fecha_devolucion, costo_total) VALUES
(2, 1, 1, '2024-05-15 10:00:00', '2024-05-16 10:00:00', 12.10),
(3, 4, 2, '2024-06-01 12:00:00', '2024-06-03 12:00:00', 22.10),
(4, 5, 3, '2024-07-10 14:00:00', '2024-07-12 14:00:00', 15.10),
(5, 6, 4, '2024-08-15 09:00:00', '2024-08-17 09:00:00', 32.10),
(6, 7, 5, '2024-09-01 11:00:00', '2024-09-03 11:00:00', 50.10),
(7, 8, 1, '2024-10-10 15:00:00', '2024-10-12 15:00:00', 2.10),
(8, 9, 2, '2024-11-01 08:00:00', '2024-11-03 08:00:00', 3.10),
(9, 10, 3, '2024-12-15 16:00:00', '2024-12-17 16:00:00', 12.10),
(10, 11, 4, '2025-01-10 10:00:00', '2025-01-12 10:00:00', 13.10),
(1, 12, 5, '2025-02-01 12:00:00', '2025-02-03 12:00:00', 18.10);

