/*1. Buscar todos los apellidos de la tabla clientes, sin repetir filas.*/
SELECT DISTINCT apellido FROM clientes;

/*2. Dar una lista de los clientes indicando: nombre, apellido y nombre de ciudad.*/
SELECT cl.nombre, cl.apellido, c.nombre  FROM clientes AS cl 
  JOIN ciudades AS c ON cl.localidad = c.id;
  
/*3. Buscar las ciudades de la provincia de Cordoba.*/
SELECT c.nombre FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id
  WHERE p.nombre = 'Cordoba';
  
/*4. Indicar fecha y hora de las ventas de biromes azules.*/
SELECT fecha FROM compras AS c 
JOIN productos AS p ON c.producto = p.id 
WHERE descripcion = 'Birome azul';

/*5. ¿Cuantas biromes azules se vendieron?*/
SELECT SUM(c.cant) AS biromes_azules_vendidos FROM compras AS c 
  JOIN productos AS p ON c.producto = p.id
  WHERE p.descripcion = 'Birome azul';

/*6. Buscar las ciudades con mas de 500000 habitantes, indicando nombre, provincia y poblacion.*/
SELECT c.nombre, p.nombre, c.poblacion FROM ciudades AS c
  JOIN provincias AS p ON c.provincia = p.id 
  WHERE c.poblacion > 500000 ; 
/*7. Indicar el total gastado en cada compra.*/

/*8*/

/*9. Indicar para cada compra el id de compra y la dirección de envío.*/
SELECT co.id, cl.calle, cl.altura, ci.nombre
FROM compras AS co 
JOIN clientes AS cl ON cl.id = co.cliente
JOIN ciudades AS ci ON ci.id = cl.localidad;

/*10*/



/*11*/
SELECT CONCAT(UPPER(cl.apellido), ', ', cl.nombre) AS cliente, 
SUM(precio * cant) AS 'total gastado'
FROM compras AS co
JOIN clientes AS cl.id = co.cliente
JOIN productos AS p.id = co.producto;

/*12. ¿Cual es el cliente que gastó más?*/
SELECT CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente,
       SUM(p.precio*cant) AS 'total gastado'
FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  JOIN clientes AS cli ON c.cliente = cli.id
GROUP BY cliente
ORDER BY SUM(p.precio*cant) DESC
LIMIT 1;

/*13. Dar los nombres de los clientes que gastaron $5000 o mas.*/
SELECT CONCAT(UPPER(cli.apellido), ', ', cli.nombre) AS cliente, 
       SUM(p.precio*cant) AS 'total gastado' 
FROM compras AS c 
  JOIN productos AS p ON c.producto = p.id 
  JOIN clientes AS cli ON c.cliente = cli.id 
GROUP BY cliente 
HAVING SUM(p.precio*cant) >= 5000 
ORDER BY cli.apellido, cli.nombre;

/*14. El correo necesita imprimir las etiquetas con el nombre del cliente y la dirección para cada envío. Dar una lista
con esos datos para cada compra ordenados por fecha. En una columna apellido y nombre de cliente, en la otra
el domicilio indicando: calle, altura, localidad y provincia.*/

/*15. Indicar nombre de provincia y poblacion total de sus ciudades para la tabla ciudades. Mostrar solamente las
provincias que sumen más de un millón de habitantes.*/
SELECT p.nombre AS provincia, SUM(c.poblacion) AS total_poblacion FROM provincias AS p 
JOIN ciudades AS c ON c.provincia = p.id
GROUP BY p. id 
HAVING  SUM(c.poblacion) > 1000000;

/*16. Mostrar las compras de Juan Perez ordenadas por fecha. Indicar artículo, precio, cantidad y total de la compra.*/

/*17. Buscar el nombre y apellido de los clientes que viven en Santa Fe o Cordoba.*/

/*18. Dar el total de población para cada región de la Argentina.*/

/*19. Listar las regiones del país que no lleguen a tres millones de habitantes.*/

/*20. Mostrar las compras de menos de mil pesos en un listado como el del ejercicio 10*/

/*24. Buscar las regiones del país con cuatro o más provincias.*/
SELECT region, COUNT(*) AS cantidad_provincias
FROM provincias
GROUP BY region
HAVING COUNT(*) >= 4;

/*25. Buscar las ciudades de la provincia de Santa Fe con más de quinientos mil habitantes.*/
SELECT c.nombre, c.poblacion FROM ciudades AS c 
  JOIN provincias AS p ON c.provincia = p.id
  WHERE p.nombre = "Santa Fe" AND c.poblacion > 500000; 

/*26. ¿Cuántas resmas A4 se vendieron?*/
SELECT SUM(c.cant), p.descripcion FROM compras AS c
  JOIN productos AS p ON c.producto = p.id 
  WHERE p.descripcion = "Resma A4";

/*27. Indicar el total gastado en cada compra.*/
SELECT c.id AS id_compra, SUM(c.cant * p.precio) AS gasto_total FROM compras AS c
  JOIN productos AS p ON c.producto = p.id
  GROUP BY c.id;

/*28. Indicar para cada compra el id de compra y la dirección de envío.*/
SELECT c.id, CONCAT(cl.calle, ' ', cl.altura, ', ', ci.nombre) AS Direccion_de_envio FROM compras AS c
  JOIN clientes AS cl ON c.cliente = cl.id
  JOIN ciudades AS ci ON cl.localidad = ci.id 
  ORDER BY c.id ASC ;

/*29. ¿En qué equipo juega Sebastián Villa?*/
SELECT e.nombre FROM equipos AS e 
  JOIN jugadores AS j ON j.equipo = e.id
  WHERE j.nombre = "Sebastian Villa";

/*30. Dar una lista de todos los jugadores en equipos rosarinos indicando nombre, apellido y posición.*/
SELECT j.nombre, j.apellido, j.pos FROM jugadores AS j 
  JOIN equipos AS e ON e.id = j.equipo 
  WHERE e.ciudad = "Rosario";

/*31. Dar la lista de materias pendientes (no aprobadas) del alumno con DNI 40123456.*/
SELECT m.nombre FROM alumnos AS a
  JOIN notas AS n ON a.id = n.alumno
  JOIN materias AS m ON n.materia = m.id
  WHERE a.dni = '40123456' AND n.nota < 6;

/*32. Dar la cantidad de materias aprobadas para cada alumno, indicando DNI, nombre, apellido y cantidad de materias
aprobada*/
SELECT a.dni, a.nombre, a.apellido, COUNT(*) AS cant_materias_aprobadas

/*33. Dar una lista con los arqueros de cada equipo de primera división indicando nombre de equipo, nombre, apellido
y altura.*/
SELECT e.nombre, j.nombre, j.apellido, j.altura  FROM jugadores AS j
  JOIN equipos AS e ON e.id = j.equipo 
  WHERE j.pos = "ARQ" AND e.division = "Primera";

/*34. Buscar el arquero más alto de primera división.*/
SELECT j.nombre, j.altura FROM jugadores j
  JOIN equipos AS e ON e.id = j.equipo
  WHERE e.division = "Primera" AND j.pos = "ARQ" ORDER BY j.altura DESC LIMIT 1 ;

/*35. Buscar los delanteros de Ferro indicando nombre, apellido y edad. Ordenarlos del más joven al más viejo.*/

/*36. Crear un listado de partidos indicando local y visitante y cruzando todos los equipos entre sí.*/

/*37. Contar cuántos equipos de fútbol hay por cada ciudad.*/

/*38. Sumar los campeonatos de los equipos de fútbol por ciudad.*/

/*39. Mostrar la compra promedio por cliente indicando nombre y apellido del cliente.*/

/*40. Mostrar la altitud promedio de las ciudades de cada provincia, ordenar por nombre de provincia.*/

/*41. Contar la cantidad de materias por año, discriminando en el caso de tercero a sexto año entre computación y
automotores.*/

/*42. Crear un listado con la nota final de cada materia para cada alumno. La nota final es el promedio de todas las
notas parciales. Indicar nombre y apellido del alumno y nombre de la materia.*/

/*43. Agregar al listado anterior el curso y la especialidad.*/

/*44. Buscar el delantero más joven del Nacional B.*/

/*45. Mostrar todas las ciudades de la provincia de Buenos Aires con más de cien mil habitantes.*/

/*46. Indicar la ciudad más antigua por región de la Argentina.*/

/*47. Mostrar las materias cuya nota final sea menor a 6 y tengan 4 horas o más de Pedro García.*/

/*48. Dar una lista indicando la cantidad de jugadores que tiene cada equipo.*/

/*49. Indicar fecha, hora, producto y nombre del cliente que hizo la compra más cara.*/

/*50. Buscar el jugador más viejo del equipo más viejo. Indicar nombre de equipo, fecha de fundación, nombre del
jugador y edad.*/
