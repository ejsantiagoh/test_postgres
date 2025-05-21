-- Inserciones bd_movierental

INSERT into cliente  (id,nombre,contacto,direccion) VALUES
(1,'juan','+57 30000000','calle 4 -5'),
(2,'marck','+57 30040000','carrera 14 -5'),
(3,'zuckerberg','+57 30030000','avenida 4 -5'),
(4,'Elon','+57 30000100','calle 54 -5'),
(5,'Musk','+57 30200000','calle 4 -78'),
(6,'Alvaro','+57 30500000','avenida 2 -5'),
(7,'Gustavo','+57 30700000','carrera 44 -5'),
(8,'Omar','+57 30800000','carrera 65 -5'),
(9,'Trump','+57 30900000','avenida 21 -36'),
(10,'Vladimir','57 30110000','calle 4 -5');

select * from cliente;

INSERT into pelicula  (id,titulo,genero,director,anio_lanzamiento,disponibilidad,precio_alquiler) VALUES
(1,'wettewt','accion','raul rodriguez','2000-05-15','disponible',12.1),
(2,'hhhfgd','accion','lamine yamal','2000-05-15','agotado',12.1),
(3,'dfhfd','drama','carlos inzagi','2000-05-15','agotado',12.1),
(4,'nfgnjgf','comedia','jesus','2008-05-15','disponible',22.1),
(5,'hregbf','accion','dara','2010-05-15','disponible',15.1),
(6,'mdbddf','terror','kilyam','2020-05-15','disponible',32.1),
(7,'hbf','comedia','mbappe','2023-05-15','solo por lanzamiento',50.1),
(8,'fbdefdg fdv','comedia','hansi flick','2011-05-15','disponible',2.1),
(9,'fgdr fd','accion','Enrique de la fuente','2025-05-15','solo por lanzamiento',3.1),
(10,'dfgfg','drama','lorenzo','2019-05-15','disponible',12.1),
(11,'wetgdsgsdtewt','accion','pellegrini','2022-05-15','disponible',13.1),
(12,'dsgsr','accion','caletto ancelloti','2023-05-15','disponible',18.1),
(13,'ergr','drama','dudamel','2009-05-15','disponible',12.7),
(14,'asffe','comedia','robert lewandoski','2008-05-15','disponible',12.5),
(15,'asfsf','accion','zlatan ibrahimovich','2007-05-15','agotado',17.1);

select * from pelicula;

INSERT into categoria (id, clasificacion, id_pelicula) VALUES
(1,'drama',3),
(2,'acción',1),
(3,'comedia',4),
(4,'terror',6);

INSERT into pagos (id,fecha,monto,id_cliente) VALUES
(1,'2025-05-15 08:30:00',13,1),
(2,'2024-02-15 08:30:00',13,1),
(3,'2023-07-15 08:30:00',18.1,1),
(4,'2025-01-15 08:30:00',13,1),
(5,'2024-05-15 08:30:00',13,1),
(6,'2024-08-15 08:30:00',18.1,1),
(7,'2023-05-15 08:30:00',13,1),
(8,'2025-09-15 08:30:00',12.5,1),
(9,'2022-10-15 08:30:00',13,1),
(10,'2025-12-15 08:30:00',12.5,1);


INSERT into alquiler (id,id_cliente ,id_pelicula ,fecha_ini ,fecha_devolucion,costo_total) VALUES
(1,2,1,'2000-05-15','2000-05-16',12.1),
(2,2,1,'2000-05-15','2000-05-18',12.1),
(3,2,1,'2000-05-15','2000-05-20',12.1),
(4,2,1,'2000-05-15','2000-07-21',12.1),
(5,2,1,'2000-05-15','2000-09-15',12.1),
(6,2,1,'2000-05-15','2000-02-15',12.1),
(7,2,1,'2000-05-15','2000-03-15',12.1),
(8,2,1,'2000-05-15','2000-05-15',12.1),
(9,2,1,'2000-05-15','2000-04-15',12.1),
(10,2,1,'2000-05-15','2000-05-15',12.1);


INSERT into sucursal  (id,direccion, id_cliente, id_pelicula,id_categoria,id_alquiler,id_pagos) VALUES
(1,'B. provenza 34-21',1,4,2,1,8),
(2,'B. cabecera 4-21',1,4,2,1,8),
(3,'B. venecia 14-21',1,4,2,1,8),
(4,'B. fontana 42-21',1,4,2,1,8),
(5,'B. Diamante 5-21',1,4,2,1,8);

