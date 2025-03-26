## Ejercicios

1. Buscar el gobernador de Neuquén.
2. Buscar la capital de Misiones.
3. Dar una lista de todas las provincias con más de un millón de habitantes.
4. Dar una lista de todas las provincias con su densidad de población.
5. ¿De qué provincia es gobernador Omar Perotti?
6. Listar solamente las provincias, sin incluir la Ciudad Autónoma de Buenos Aires.
7. Buscar las provincias que empiecen con "San" o "Santa".
8. Buscar las provincias que tengan entre 100000 y 200000 kilómetros cuadrados.
9. Buscar los gobernadores que tengan apellido que comience con "K".
10. Listar las provincias y ordenarlas por cantidad de habitantes.
11. Buscar la provincia más pequeña.

## queries_2023    
1. Mostrar los equipos de la ciudad de Mendoza
SELECT nombre FROM equipos WHERE ciudad = "Mendoza";

2. Mostrar el equipo mas antiguo. Indicar nombre y fundacion
SELECT nombre, fecha_fund FROM equipos ORDER BY fecha_fund ASC LIMIT 1;

3. Mostrar los nombres de todas las materias de quinto automotores
SELECT nombre FROM materias WHERE curso = 5;
