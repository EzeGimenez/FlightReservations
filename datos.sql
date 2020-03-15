USE vuelos;

INSERT INTO modelos_avion VALUES ("747", "Boeing", 2, 416);
INSERT INTO modelos_avion VALUES ("A320", "Airbus", 2, 220);

INSERT INTO clases VALUES ("Turista", 0.20);
INSERT INTO clases VALUES ("Primera clase", 0.75);
INSERT INTO clases VALUES ("Ejecutivo", 0.99);

INSERT INTO comodidades(codigo, descripcion) VALUES (1, "Asientos reclinables, TV + audio por butaca");
INSERT INTO comodidades(codigo, descripcion) VALUES (2, "Servicio de cattering");

INSERT INTO ubicaciones VALUES ("Argentina", "Buenos Aires", "Buenos Aires", 2);
INSERT INTO ubicaciones VALUES ("Argentina", "Rio Negro", "Bariloche", 2);
INSERT INTO ubicaciones VALUES ("Argentina", "Buenos Aires", "Bahia Blanca", 2);
INSERT INTO ubicaciones VALUES ("Argentina", "Neuquen", "Neuquen Capital", 2);

INSERT INTO aeropuertos VALUES ("Ezeiza", 1, "TEL", "DIR", "Argentina", "Buenos Aires", "Buenos Aires");
INSERT INTO aeropuertos VALUES ("Tte. Luis Candelaria", 2, "TEL2", "DIR2", "Argentina", "Rio Negro", "Bariloche");
INSERT INTO aeropuertos VALUES ("Comandante Espora", 3, "TEL3", "DIR3", "Argentina", "Buenos Aires", "Bahia Blanca");
INSERT INTO aeropuertos VALUES ("Juan Domingo Peron", 4, "TEL4", "DIR4", "Argentina", "Neuquen", "Neuquen Capital");

INSERT INTO vuelos_programados VALUES (100, 3, 1); /* Vuelo 100 Bahia -> Bs As */
INSERT INTO vuelos_programados VALUES (101, 1, 2); /* Vuelo 101 Bs As -> Bariloche */
INSERT INTO vuelos_programados VALUES (102, 4, 1); /* Vuelo 102 Neuquen -> Bs As */

INSERT INTO salidas VALUES (100, "mi", "07:10:00", "08:20:00", "A320");
INSERT INTO salidas VALUES (100, "ju", "09:10:00", "12:20:00", "747");
INSERT INTO salidas VALUES (101, "lu", "10:10:00", "11:20:00", "747");

INSERT INTO instancias_vuelo(vuelo, fecha, dia, estado) VALUES (100, "2019/09/18", "mi", "Lleno");
INSERT INTO instancias_vuelo(vuelo, fecha, dia, estado) VALUES (100, "2019/09/19", "ju", "Lleno");
INSERT INTO instancias_vuelo(vuelo, fecha, dia, estado) VALUES (101, "2019/09/23", "lu", "Lugares libres");

INSERT INTO pasajeros VALUES ("DNI", 11222333, "Perez", "Juan", "Calle Falsa 123", "23234234", "Argentino");
INSERT INTO pasajeros VALUES ("DNI", 66555888, "Gomez", "Pablo", "Calle Falsa 345", "21356843", "Argentino");
INSERT INTO pasajeros VALUES ("DNI", 33444777, "Perez", "Pedro", "Calle Falsa 456", "34475879", "Argentino");
INSERT INTO pasajeros VALUES ("DNI", 99999666, "Velez", "Beto", "Calle Falsa 678", "23795609", "Argentino");

INSERT INTO empleados VALUES (5154, md5('passwd1'), "DNI", 87543093, "Gonzalez", "Mario", "D1", "T1");
INSERT INTO empleados VALUES (3360, md5('passwd2'), "DNI", 51454676, "Gimenez", "Carlos", "D2", "T2");

INSERT INTO reservas VALUES (1, curdate(), "2019/09/22", "No sobrevendido", "DNI", 11222333, 5154);
INSERT INTO reservas VALUES (2, curdate(), "2019/09/22", "Sobrevendido", "DNI", 66555888, 5154);
INSERT INTO reservas VALUES (3, curdate(), "2019/09/22", "Sobrevendido", "DNI", 33444777, 5154);
INSERT INTO reservas VALUES (4, curdate(), "2019/09/22", "Sobrevendido", "DNI", 99999666, 3360);

INSERT INTO brinda VALUES (100, "mi", "Turista", 12345.67, 10);
INSERT INTO brinda VALUES (100, "ju", "Turista", 1235.67, 20);
INSERT INTO brinda VALUES (101, "lu", "Ejecutivo", 45678.90, 20);

INSERT INTO posee(clase, comodidad) VALUES ("Primera Clase", 1);
INSERT INTO posee(clase, comodidad) VALUES ("Ejecutivo", 2);
INSERT INTO posee(clase, comodidad) VALUES ("Ejecutivo", 1);

INSERT INTO reserva_vuelo_clase VALUES (1, 100, "2019/09/18", "Turista");
INSERT INTO reserva_vuelo_clase VALUES (2, 100, "2019/09/19", "Ejecutivo");
INSERT INTO reserva_vuelo_clase VALUES (3, 100, "2019/09/18", "Ejecutivo");
INSERT INTO reserva_vuelo_clase VALUES (4, 101, "2019/09/23", "Ejecutivo");