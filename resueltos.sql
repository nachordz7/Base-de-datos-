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





