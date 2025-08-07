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

/*7. Indicar el total gastado en cada compra.*/

/*8*/

/*9. Indicar para cada compra el id de compra y la dirección de envío.*/
SELECT co.id, cl.calle, cl.altura, ci.nombre
FROM compras AS co 
JOIN clientes AS cl ON cl.id = co.cliente
JOIN ciudades AS ci ON ci.id = cl.localidad;

/*10*/



/*11*/
SELECT CONCAT(UPPER(cl.apellido), ', ', cl.nombre)
SUM(precio * cant) AS 'total gastado'
FROM compras AS co
JOIN clientes AS cl.id = co.cliente
JOIN productos AS p.id = co.producto;