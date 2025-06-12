DROP DATABASE IF EXISTE electrodomesticos;
CREATE DATABASE electrodomesticos;
USE electrodomesticos;

CREATE TABLE sucursales (
id INT PRIMARY KEY, 
ubicacion VARCHAR(60), 
localidad VARCHAR(60), 
m2 INT
) ;

CREATE TABLE personal(
id INT PRIMARY KEY AUTO_INCREMENT, 
dni INT, 
salario REAL, 
f_ingreso DATETIME, 
rol ENUM("vendedor", "cadete", "repositor", " cajero"), 
sucursal INT, 
FOREIGN KEY (sucursal) REFERENCES sucursales(id) 
) ;

CREATE TABLE ventas (




) ;