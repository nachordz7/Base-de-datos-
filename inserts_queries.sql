
USE queries_2023;

INSERT INTO jugadores VALUES
  (NULL,'Leonel','Vangioni',177,35,'DEF',1),
  (NULL,'Mariano','Andujar',194,38,'ARQ',4),
  (NULL,'Dario','Cvitanich',172,38,'DEL',3),
  (NULL,'Brahian','Aleman',178,32,'MED',5);

INSERT INTO alumnos VALUES
  (NULL,42123123,'Juan','Gonzalez',4,'Computacion'),
  (NULL,43200110,'Jorge','Perez',4,'Computacion'),
  (NULL,46123456,'Maria','Rodriguez',3,'Automotores'),
  (NULL,47000123,'Pedro','Garcia',2,'Ciclo basico');

INSERT INTO materias VALUES
  (NULL,'Algoritmos',4,'Computacion',9,1,NULL),
  (NULL,'Biologia',2,'Ciclo basico',2,0,NULL),
  (NULL,'Matematica',4,'Computacion',4,0,NULL),
  (NULL,'Taller',3,'Computacion',9,1,'Redes'),
  (NULL,'Lengua',4,'Automotores',3,0,NULL);

INSERT INTO equipos VALUES
  (NULL,'Newells','Marcelo Bielsa','Rosario','1903-11-03',37993,'Primera',6),
  (NULL,'Ferro','Arquitecto Ricardo Etcheverri','Buenos Aires','1904-07-28',14000,'Nacional B',2),
  (NULL,'Banfield','Florencio Sola','Banfield','1896-01-21',13276,'Primera',1),
  (NULL,'Estudiantes','Jorge Luis Hirschi','La Plata','1905-08-04',50000,'Primera',6),
  (NULL,'Gimnasia','Juan Carmelo Zerillo','La Plata','1887-06-03',27444,'Primera',1);


INSERT INTO provincias(nombre, capital, gobernador, poblacion, superficie, autonoma_desde) VALUES
('Buenos Aires', 'La Plata', 'Axel Kicillof', 17541141, 307571, '1820-02-11'),
('Catamarca', 'San Fernando del Valle de Catamarca', 'Raul Jalil', 415438, 102602, '1821-08-25'),
('Chaco', 'Resistencia', 'Jorge Capitanich', 1204541, 99633, '1951-08-08'),
('Chubut', 'Rawson', 'Mariano Arcioni', 618994, 224686, '1955-06-15'),
('Cordoba', 'Cordoba', 'Juan Schiaretti', 3760450, 165321, '1820-01-05'),
('Corrientes', 'Corrientes', 'Gustavo Valdes', 1120801, 88199, '1814-04-20'),
('Entre Rios', 'Parana', 'Gustavo Border', 1385961, 78781, '1814-04-23'),
('Formosa', 'Formosa', 'Gildo Insfran', 605193, 72066, '1955-06-15'),
('Jujuy', 'San Salvador de Jujuy', 'Gerardo Morales', 770881, 53219, '1836-12-17'),
('La Pampa', 'Santa Rosa', 'Carlos Verna', 358428, 143440, '1951-08-08'),
('La Rioja', 'La Rioja', 'Ricardo Quintela', 393531, 89680, '1820-03-01'),
('Mendoza', 'Mendoza', 'Rodolfo Suarez', 1990338, 148827, '1820-03-01'),
('Misiones', 'Posadas', 'Oscar Herrera Ahuad', 1261294, 29801, '1953-12-10'),
('Neuquen', 'Neuquen', 'Omar Gutierrez', 664057, 94078, '1955-06-15'),
('Rio Negro', 'Viedma', 'Arabela Carreras', 747610, 203013, '1955-06-15'),
('Salta', 'Salta', 'Gustavo Saenz', 1424397, 155488, '1836-12-17'),
('San Juan', 'San Juan', 'Sergio Uñac', 781217, 89651, '1820-03-01'),
('San Luis', 'San Luis', 'Alberto Rodriguez Saa', 508328, 76748, '1820-03-01'),
('Santa Cruz', 'Rio Gallegos', 'Alicia Kirchner', 365698, 243943, '1956-11-22'),
('Santa Fe', 'Santa Fe', 'Omar Perotti', 3536418, 133007, '1816-05-10'),
('Santiago del Estero', 'Santiago del Estero', 'Gerardo Zamora', 978313, 136351, '1820-04-27'),
('Tierra del Fuego, Antartida e Islas del Atlantico Sur', 'Ushuaia', 'Gustavo Melella', 173432, 21571, '1990-04-26'),
('Tucuman', 'San Miguel de Tucuman', 'Juan Luis Manzur', 1694656, 22524, '1825-11-25'),
('Ciudad Autonoma de Buenos Aires', NULL, 'Horacio Rodriguez Larreta', 3075646, 203, '1536-02-02');
