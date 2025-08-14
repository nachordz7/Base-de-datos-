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
