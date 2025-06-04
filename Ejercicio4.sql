DROP DATABASE IF EXISTS Ejercicio4;
CREATE DATABASE Ejercicio4;
USE Ejercicio4;

CREATE TABLE clientes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(60),
    direccion VARCHAR(60)
);

CREATE TABLE productos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(60),
    precio DECIMAL 
);

CREATE TABLE compras(
    cliente INT,
    producto INT,
    cantidad INT, 
    FOREIGN KEY (cliente) REFERENCES clientes(id),
    FOREIGN KEY (producto) REFERENCES productos(id)
);