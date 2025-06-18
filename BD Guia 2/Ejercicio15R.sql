/*Mapear el siguiente DER al modelo relacional*/
DROP DATABASE IF EXISTS trabajo;
CREATE DATABASE trabajo; 
USE trabajo;

CREATE TABLE empleado(
  cuil INT PRIMARY KEY,
  dni INT,
  nombre VARCHAR(60) 
);

CREATE TABLE oficina(
  numero INT PRIMARY KEY,
  tel INT,
  muebles
);

CREATE TABLE muebles(
  
);
