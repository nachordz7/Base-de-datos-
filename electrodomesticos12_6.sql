DROP DATABASE IF EXISTE electrodomesticos;
CREATE DATABASE electrodomesticos;
USE electrodomesticos;

CREATE TABLE sucursales (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    ubicacion VARCHAR(100), 
    localidad VARCHAR(100), 
    m2 INT
) ;

CREATE TABLE personal(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    dni INT, 
    salario DECIMAL(12,2), 
    f_ingreso DATE, 
    rol ENUM("vendedor", "cadete", "repositor", " cajero"), 
    sucursal INT, 
    FOREIGN KEY (sucursal) REFERENCES sucursales(id) 
) ;

CREATE TABLE ventas (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    vendedor INT, 
    monto DECIMAL(20,2), 
    FOREIGN KEY (vendedor) REFERENCES personal(id) 
) ;