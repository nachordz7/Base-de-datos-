/*13. Buscar el gobernador de Neuquén */
SELECT gobernador,nombre FROM provincias WHERE nombre LIKE "Neuquen";
+----------------+---------+
| gobernador     | nombre  |
+----------------+---------+
| Omar Gutierrez | Neuquen |
+----------------+---------+

/*14. Buscar la capital de Misiones */
SELECT capital FROM provincias WHERE nombre = "Misiones";
+---------+
| capital |
+---------+
| Posadas |
+---------+

/*15. Dar una lista de todas las provincias con más de un millón de habitantes*/
SELECT nombre FROM provincias WHERE poblacion > 1000000;
+---------------------------------+
| nombre                          |
+---------------------------------+
| Buenos Aires                    |
| Chaco                           |
| Cordoba                         |
| Corrientes                      |
| Entre Rios                      |
| Mendoza                         |
| Misiones                        |
| Salta                           |
| Santa Fe                        |
| Tucuman                         |
| Ciudad Autonoma de Buenos Aires |
+---------------------------------+

/*16. Dar una lista de todas las provincias con su densidad de población.  */
SELECT nombre, poblacion/superficie AS densidad FROM provincias;
+-------------------------------------------------------+------------+
| nombre                                                | densidad   |
+-------------------------------------------------------+------------+
| Buenos Aires                                          |    57.0312 |
| Catamarca                                             |     4.0490 |
| Chaco                                                 |    12.0898 |
| Chubut                                                |     2.7549 |
| Cordoba                                               |    22.7464 |
| Corrientes                                            |    12.7076 |
| Entre Rios                                            |    17.5926 |
| Formosa                                               |     8.3978 |
| Jujuy                                                 |    14.4851 |
| La Pampa                                              |     2.4988 |
| La Rioja                                              |     4.3882 |
| Mendoza                                               |    13.3735 |
| Misiones                                              |    42.3239 |
| Neuquen                                               |     7.0586 |
| Rio Negro                                             |     3.6826 |
| Salta                                                 |     9.1608 |
| San Juan                                              |     8.7140 |
| San Luis                                              |     6.6233 |
| Santa Cruz                                            |     1.4991 |
| Santa Fe                                              |    26.5882 |
| Santiago del Estero                                   |     7.1750 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |     8.0401 |
| Tucuman                                               |    75.2378 |
| Ciudad Autonoma de Buenos Aires                       | 15150.9655 |
+-------------------------------------------------------+------------+

/*17. ¿De qué provincia es gobernador Omar Perotti? */
SELECT nombre FROM provincias WHERE gobernador LIKE "Omar Perotti";
+----------+
| nombre   |
+----------+
| Santa Fe |

/*18 Listar solamente las provincias, sin incluir la Ciudad Autónoma de Buenos Aires.*/
SELECT nombre FROM provincias WHERE nombre NOT LIKE "Ciudad%";
+-------------------------------------------------------+
| nombre                                                |
+-------------------------------------------------------+
| Buenos Aires                                          |
| Catamarca                                             |
| Chaco                                                 |
| Chubut                                                |
| Cordoba                                               |
| Corrientes                                            |
| Entre Rios                                            |
| Formosa                                               |
| Jujuy                                                 |
| La Pampa                                              |
| La Rioja                                              |
| Mendoza                                               |
| Misiones                                              |
| Neuquen                                               |
| Rio Negro                                             |
| Salta                                                 |
| San Juan                                              |
| San Luis                                              |
| Santa Cruz                                            |
| Santa Fe                                              |
| Santiago del Estero                                   |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |
| Tucuman                                               |
+-------------------------------------------------------+

/* 19. Buscar las provincias que empiecen con ”San” o ”Santa”. */
SELECT nombre FROM provincias WHERE nombre LIKE "San%" OR nombre LIKE "Santa%";
+---------------------+
| nombre              |
+---------------------+
| San Juan            |
| San Luis            |
| Santa Cruz          |
| Santa Fe            |
| Santiago del Estero |
+---------------------+

/* 20. Buscar las provincias que tengan entre 100000 y 200000 kilómetros cuadrados */
SELECT nombre FROM provincias WHERE superficie BETWEEN  100000 AND 200000;
+---------------------+
| nombre              |
+---------------------+
| Catamarca           |
| Cordoba             |
| La Pampa            |
| Mendoza             |
| Salta               |
| Santa Fe            |
| Santiago del Estero |
+---------------------+

/* 21. Buscar los gobernadores que tengan apellido que comience con ”K”  */
SELECT gobernador FROM provincias WHERE gobernador LIKE "%k%";
+-----------------+
| gobernador      |
+-----------------+
| Axel Kicillof   |
| Alicia Kirchner |
+-----------------+

/*22. Listar las provincias y ordenarlas por cantidad de habitantes.*/
SELECT nombre FROM provincias ORDER BY poblacion DESC;
+-------------------------------------------------------+
| nombre                                                |
+-------------------------------------------------------+
| Buenos Aires                                          |
| Cordoba                                               |
| Santa Fe                                              |
| Ciudad Autonoma de Buenos Aires                       |
| Mendoza                                               |
| Tucuman                                               |
| Salta                                                 |
| Entre Rios                                            |
| Misiones                                              |
| Chaco                                                 |
| Corrientes                                            |
| Santiago del Estero                                   |
| San Juan                                              |
| Jujuy                                                 |
| Rio Negro                                             |
| Neuquen                                               |
| Chubut                                                |
| Formosa                                               |
| San Luis                                              |
| Catamarca                                             |
| La Rioja                                              |
| Santa Cruz                                            |
| La Pampa                                              |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |
+-------------------------------------------------------+

/*23 . Buscar la provincia más pequeña */
SELECT nombre FROM provincias WHERE nombre NOT LIKE "Ciudad%" ORDER BY superficie ASC LIMIT 1;
+-------------------------------------------------------+
| nombre                                                |
+-------------------------------------------------------+
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |
+-------------------------------------------------------+

/*24. Buscar las provincias cuya capital se llame igual que la provincia */
SELECT nombre, capital FROM provincias WHERE capital=nombre;
+---------------------+---------------------+
| nombre              | capital             |
+---------------------+---------------------+
| Cordoba             | Cordoba             |
| Corrientes          | Corrientes          |
| Formosa             | Formosa             |
| La Rioja            | La Rioja            |
| Mendoza             | Mendoza             |
| Neuquen             | Neuquen             |
| Salta               | Salta               |
| San Juan            | San Juan            |
| San Luis            | San Luis            |
| Santa Fe            | Santa Fe            |
| Santiago del Estero | Santiago del Estero |
+---------------------+---------------------+

/*25. Buscar la provincia más joven */
SELECT nombre, autonoma_desde FROM provincias WHERE nombre NOT LIKE "Ciudad%" ORDER BY autonoma_desde ASC LIMIT 1;
+------------+----------------+
| nombre     | autonoma_desde |
+------------+----------------+
| Corrientes | 1814-04-20     |
+------------+----------------+

/*26. Dar la superficie total de la Argentina*/
SELECT SUM(superficie) AS Superficie_Total FROM  provincias ;
+------------------+
| Superficie_Total |
+------------------+
|          2780403 |
+------------------+

/*27. Dar la población total de la Argentina */
SELECT SUM(poblacion) AS Poblacion_Total FROM  provincias ;
+-----------------+
| Poblacion_Total |
+-----------------+
|        45376763 |
+-----------------+

/* 28. Listar todas las provincias indicando: nombre, superficie y porcentaje de superficie total del país que ocupa.*/
SELECT nombre, superficie, (superficie * 100) / 2780403 AS Porcentaje_Superficie_Total FROM provincias ORDER BY Porcentaje_Superficie_Total ;
+-------------------------------------------------------+------------+-----------------------------+
| nombre                                                | superficie | Porcentaje_Superficie_Total |
+-------------------------------------------------------+------------+-----------------------------+
| Ciudad Autonoma de Buenos Aires                       |        203 |                      0.0073 |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur |      21571 |                      0.7758 |
| Tucuman                                               |      22524 |                      0.8101 |
| Misiones                                              |      29801 |                      1.0718 |
| Jujuy                                                 |      53219 |                      1.9141 |
| Formosa                                               |      72066 |                      2.5919 |
| San Luis                                              |      76748 |                      2.7603 |
| Entre Rios                                            |      78781 |                      2.8334 |
| Corrientes                                            |      88199 |                      3.1722 |
| San Juan                                              |      89651 |                      3.2244 |
| La Rioja                                              |      89680 |                      3.2254 |
| Neuquen                                               |      94078 |                      3.3836 |
| Chaco                                                 |      99633 |                      3.5834 |
| Catamarca                                             |     102602 |                      3.6902 |
| Santa Fe                                              |     133007 |                      4.7837 |
| Santiago del Estero                                   |     136351 |                      4.9040 |
| La Pampa                                              |     143440 |                      5.1590 |
| Mendoza                                               |     148827 |                      5.3527 |
| Salta                                                 |     155488 |                      5.5923 |
| Cordoba                                               |     165321 |                      5.9459 |
| Rio Negro                                             |     203013 |                      7.3016 |
| Chubut                                                |     224686 |                      8.0811 |
| Santa Cruz                                            |     243943 |                      8.7737 |
| Buenos Aires                                          |     307571 |                     11.0621 |
+-------------------------------------------------------+------------+-----------------------------+

/* 29. Listar las provincias autónomas desde el siglo XIX.*/
SELECT nombre, autonoma_desde FROM provincias WHERE autonoma_desde BETWEEN '1801-01-01' AND '1900-12-31' ;
SELECT nombre, autonoma_desde FROM provincias WHERE YEAR(autonoma_desde) BETWEEN 1801 AND 1900;
+---------------------+----------------+
| nombre              | autonoma_desde |
+---------------------+----------------+
| Buenos Aires        | 1820-02-11     |
| Catamarca           | 1821-08-25     |
| Cordoba             | 1820-01-05     |
| Corrientes          | 1814-04-20     |
| Entre Rios          | 1814-04-23     |
| Jujuy               | 1836-12-17     |
| La Rioja            | 1820-03-01     |
| Mendoza             | 1820-03-01     |
| Salta               | 1836-12-17     |
| San Juan            | 1820-03-01     |
| San Luis            | 1820-03-01     |
| Santa Fe            | 1816-05-10     |
| Santiago del Estero | 1820-04-27     |
| Tucuman             | 1825-11-25     |
+---------------------+----------------+

/* 30.Contar la cantidad de provincias.*/
SELECT COUNT(nombre) AS cantidad_de_provincias FROM provincias;
+------------------------+
| cantidad_de_provincias |
+------------------------+
|                     24 |
+------------------------+

/* 31. ¿Cuántos gobernadores llamados Gustavo hay?.*/
SELECT COUNT(gobernador) AS Contador FROM provincias WHERE gobernador LIKE "Gustavo%";
+----------+
| Contador |
+----------+
|        4 |
+----------+

/*32. ¿Cuáles son las capitales de las provincias de Cuyo?*/ 
SELECT capital FROM provincias WHERE nombre IN( "Mendoza", "San Juan","San Luis");
+----------+
| capital  |
+----------+
| Mendoza  |
| San Juan |
| San Luis |
+----------+

/* 33. Dar una lista con todas las provincias indicando hace cuantos años son autónomas.*/
SELECT nombre, autonoma_desde FROM provincias;
+-------------------------------------------------------+----------------+
| nombre                                                | autonoma_desde |
+-------------------------------------------------------+----------------+
| Buenos Aires                                          | 1820-02-11     |
| Catamarca                                             | 1821-08-25     |
| Chaco                                                 | 1951-08-08     |
| Chubut                                                | 1955-06-15     |
| Cordoba                                               | 1820-01-05     |
| Corrientes                                            | 1814-04-20     |
| Entre Rios                                            | 1814-04-23     |
| Formosa                                               | 1955-06-15     |
| Jujuy                                                 | 1836-12-17     |
| La Pampa                                              | 1951-08-08     |
| La Rioja                                              | 1820-03-01     |
| Mendoza                                               | 1820-03-01     |
| Misiones                                              | 1953-12-10     |
| Neuquen                                               | 1955-06-15     |
| Rio Negro                                             | 1955-06-15     |
| Salta                                                 | 1836-12-17     |
| San Juan                                              | 1820-03-01     |
| San Luis                                              | 1820-03-01     |
| Santa Cruz                                            | 1956-11-22     |
| Santa Fe                                              | 1816-05-10     |
| Santiago del Estero                                   | 1820-04-27     |
| Tierra del Fuego, Antartida e Islas del Atlantico Sur | 1990-04-26     |
| Tucuman                                               | 1825-11-25     |
| Ciudad Autonoma de Buenos Aires                       | 1536-02-02     |
+-------------------------------------------------------+----------------+

/*34. Listar las 23 provincias de la Argentina anteponiendo ”Provincia de ”. Por ejemplo en vez de escribir ”Buenos
Aires” debe decir ”Provincia de Buenos Aires”.*/
SELECT CONCAT ('Provincia de ',nombre) AS nombre FROM provincias;
+--------------------------------------------------------------------+
| nombre                                                             |
+--------------------------------------------------------------------+
| Provincia de Buenos Aires                                          |
| Provincia de Catamarca                                             |
| Provincia de Chaco                                                 |
| Provincia de Chubut                                                |
| Provincia de Cordoba                                               |
| Provincia de Corrientes                                            |
| Provincia de Entre Rios                                            |
| Provincia de Formosa                                               |
| Provincia de Jujuy                                                 |
| Provincia de La Pampa                                              |
| Provincia de La Rioja                                              |
| Provincia de Mendoza                                               |
| Provincia de Misiones                                              |
| Provincia de Neuquen                                               |
| Provincia de Rio Negro                                             |
| Provincia de Salta                                                 |
| Provincia de San Juan                                              |
| Provincia de San Luis                                              |
| Provincia de Santa Cruz                                            |
| Provincia de Santa Fe                                              |
| Provincia de Santiago del Estero                                   |
| Provincia de Tierra del Fuego, Antartida e Islas del Atlantico Sur |
| Provincia de Tucuman                                               |
| Provincia de Ciudad Autonoma de Buenos Aires                       |
+--------------------------------------------------------------------+

/* 35. ¿Cuál es la provincia más poblada de la Patagonia?*/
SELECT nombre, poblacion FROM provincias WHERE nombre IN ("La Pampa","Rio Negro","Chubut","Santa Cruz","Neuquen","Tierra del Fuego") ORDER BY poblacion DESC LIMIT 1;
+-----------+-----------+
| nombre    | poblacion |
+-----------+-----------+
| Rio Negro |    747610 |
+-----------+-----------+

/*36. Buscar las capitales donde el gobernador se llama ”Juan” o de provincias con más de 3 millones de habitantes.*/
SELECT capital, gobernador, poblacion FROM provincias WHERE gobernador LIKE "Juan%" OR poblacion > 3000000;
+-----------------------+---------------------------+-----------+
| capital               | gobernador                | poblacion |
+-----------------------+---------------------------+-----------+
| La Plata              | Axel Kicillof             |  17541141 |
| Cordoba               | Juan Schiaretti           |   3760450 |
| Santa Fe              | Omar Perotti              |   3536418 |
| San Miguel de Tucuman | Juan Luis Manzur          |   1694656 |
| NULL                  | Horacio Rodriguez Larreta |   3075646 |
+-----------------------+---------------------------+-----------+

/* 37. Listar las provincias poniendo por ejemplo, para Buenos Aires: ”En Buenos Aires gobierna Axel Kicillof y la
capital es La Plata”.*/
SELECT CONCAT('En ',nombre,' gobierna ',gobernador,' y la capital es ',capital) AS LISTADO FROM provincias WHERE nombre NOT LIKE "Ciudad%";
+-----------------------------------------------------------------------------------------------------------+
| LISTADO                                                                                                   |
+-----------------------------------------------------------------------------------------------------------+
| En Buenos Aires gobierna Axel Kicillof y la capital es La Plata                                           |
| En Catamarca gobierna Raul Jalil y la capital es San Fernando del Valle de Catamarca                      |
| En Chaco gobierna Jorge Capitanich y la capital es Resistencia                                            |
| En Chubut gobierna Mariano Arcioni y la capital es Rawson                                                 |
| En Cordoba gobierna Juan Schiaretti y la capital es Cordoba                                               |
| En Corrientes gobierna Gustavo Valdes y la capital es Corrientes                                          |
| En Entre Rios gobierna Gustavo Border y la capital es Parana                                              |
| En Formosa gobierna Gildo Insfran y la capital es Formosa                                                 |
| En Jujuy gobierna Gerardo Morales y la capital es San Salvador de Jujuy                                   |
| En La Pampa gobierna Carlos Verna y la capital es Santa Rosa                                              |
| En La Rioja gobierna Ricardo Quintela y la capital es La Rioja                                            |
| En Mendoza gobierna Rodolfo Suarez y la capital es Mendoza                                                |
| En Misiones gobierna Oscar Herrera Ahuad y la capital es Posadas                                          |
| En Neuquen gobierna Omar Gutierrez y la capital es Neuquen                                                |
| En Rio Negro gobierna Arabela Carreras y la capital es Viedma                                             |
| En Salta gobierna Gustavo Saenz y la capital es Salta                                                     |
| En San Juan gobierna Sergio U?ac y la capital es San Juan                                                 |
| En San Luis gobierna Alberto Rodriguez Saa y la capital es San Luis                                       |
| En Santa Cruz gobierna Alicia Kirchner y la capital es Rio Gallegos                                       |
| En Santa Fe gobierna Omar Perotti y la capital es Santa Fe                                                |
| En Santiago del Estero gobierna Gerardo Zamora y la capital es Santiago del Estero                        |
| En Tierra del Fuego, Antartida e Islas del Atlantico Sur gobierna Gustavo Melella y la capital es Ushuaia |
| En Tucuman gobierna Juan Luis Manzur y la capital es San Miguel de Tucuman                                |
+-----------------------------------------------------------------------------------------------------------+

/* 38. Mostrar los equipos de la ciudad de Mendoza.*/
SELECT nombre, ciudad FROM equipos WHERE ciudad = 'Mendoza';

/*39. Mostrar el equipo más antiguo indicando nombre y fecha de fundación.*/
SELECT nombre, fecha_fund FROM equipos ORDER BY fecha_fund ASC LIMIT 1;
+----------+------------+
| nombre   | fecha_fund |
+----------+------------+
| Gimnasia | 1887-06-03 |
+----------+------------+

/* 40. Mostrar nombre de equipo y estadio para los equipos cuyo estadio contenga “Armando” en el nombre.*/
SELECT nombre, estadio FROM equipos WHERE estadio LIKE "%Armando%";

/* 41.Mostrar la fila correspondiente a la materia con id 4. */
SELECT * FROM materias WHERE id = 4 ;
+----+--------+-------+-------------+------------+-------------+----------+
| id | nombre | curso | esp         | cant_horas | contraturno | rotacion |
+----+--------+-------+-------------+------------+-------------+----------+
|  4 | Taller |     3 | Computacion |          9 |           1 | Redes    |
+----+--------+-------+-------------+------------+-------------+----------+

/* 42. Mostrar los nombres de todas las materias de quinto automotores.*/
SELECT nombre FROM materias WHERE curso = 5;

/*43. Mostrar los nombres de los equipos fundados en el siglo XX */
SELECT nombre FROM equipos WHERE fecha_fund > 1901 AND fecha_fund < 2000;
SELECT nombre FROM equipos WHERE YEAR(fecha_fund) BETWEEN 1901 AND 2000;
+-------------+
| nombre      |
+-------------+
| Newells     |
| Ferro       |
| Estudiantes |
+-------------+

/*44. Mostrar todas las materias de segundo año exceptuando las rotaciones de Taller.*/
SELECT * FROM materias WHERE curso=2 AND rotacion NOT LIKE "Taller";

/*45. Mostrar la cantidad total de socios entre todos los equipos de la Argentina.*/
SELECT SUM(cant_socios) AS cantidad_total FROM equipos;
+----------------+
| cantidad_total |
+----------------+
|         142713 |
+----------------+

/*46. Mostrar todas las materias que se dictan a contraturno.*/
SELECT * FROM materias WHERE contraturno = 1;
+----+------------+-------+-------------+------------+-------------+----------+
| id | nombre     | curso | esp         | cant_horas | contraturno | rotacion |
+----+------------+-------+-------------+------------+-------------+----------+
|  1 | Algoritmos |     4 | Computacion |          9 |           1 | NULL     |
|  4 | Taller     |     3 | Computacion |          9 |           1 | Redes    |
+----+------------+-------+-------------+------------+-------------+----------+

/*47. Mostrar la cantidad total de horas por semana que tiene un alumno de cuarto computación.*/
SELECT SUM(cant_horas) FROM materias WHERE curso = 4 AND esp LIKE "computacion";
+-----------------+
| SUM(cant_horas) |
+-----------------+
|              13 |
+-----------------+

/*48. Mostrar nombre de equipo y ciudad de los equipos cuyo nombre comience con “Estudiantes”.¨*/
SELECT nombre, ciudad FROM equipos WHERE ciudad LIKE "Estudiantes%";

/*49. Mostrar los equipos del Nacional B*/
SELECT * FROM equipos WHERE division = "Nacional B";
+----+--------+-------------------------------+--------------+------------+-------------+------------+-------------+
| id | nombre | estadio                       | ciudad       | fecha_fund | cant_socios | division   | campeonatos |
+----+--------+-------------------------------+--------------+------------+-------------+------------+-------------+
|  2 | Ferro  | Arquitecto Ricardo Etcheverri | Buenos Aires | 1904-07-28 |       14000 | Nacional B |           2 |
+----+--------+-------------------------------+--------------+------------+-------------+------------+-------------+

/*50. Mostrar el equipo con más socios */
SELECT nombre, cant_socios FROM equipos ORDER BY cant_socios DESC LIMIT 1 ;
+-------------+-------------+
| nombre      | cant_socios |
+-------------+-------------+
| Estudiantes |       50000 |
+-------------+-------------+

/*51. Mostrar todas las rotaciones de taller de primer año.*/
SELECT rotacion FROM materias WHERE rotacion = "taller" AND curso = 1;

/*52. Dar una lista de todos los equipos ordenados del más viejo al más nuevo.*/
SELECT nombre,fecha_fund FROM equipos ORDER BY fecha_fund ASC;
+-------------+------------+
| nombre      | fecha_fund |
+-------------+------------+
| Gimnasia    | 1887-06-03 |
| Banfield    | 1896-01-21 |
| Newells     | 1903-11-03 |
| Ferro       | 1904-07-28 |
| Estudiantes | 1905-08-04 |
+-------------+------------+

/*53. Mostrar la fila correspondiente al equipo con id 8.*/
SELECT * FROM equipos WHERE id = 8;

/*54. Mostrar los nombres de todas las materias de sexto computación*/
SELECT nombre FROM materias WHERE curso = 6 AND esp = "computacion";

/*55. Mostrar nombre y cantidad de horas de las materias con 2, 3 o 4 horas.*/
SELECT nombre, cant_horas FROM materias WHERE cant_horas = 2 OR cant_horas = 3 OR cant_horas = 4 ;
+------------+------------+
| nombre     | cant_horas |
+------------+------------+
| Biologia   |          2 |
| Matematica |          4 |
| Lengua     |          3 |
+------------+------------+
