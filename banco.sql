DROP DATABASE IF EXISTS banco;
CREATE DATABASE banco;
USE banco;

CREATE TABLE bancos(
    cod 
    nombre VARCHAR(60),
    direcc VARCHAR(100)
);

CREATE TABLE sucursal_banco(
    direcc VARCHAR(100),
    branch_no
);
    
CREATE TABLE cuenta(
    numcuenta INT PRIMARY KEY
    saldo 
    tipo 
);

CREATE TABLE prestamo(
    numprest
    cantidad
    tipo
);

CREATE TABLE cliente(
    dni INT PRIMARY KEY,
    nombre VARCHAR(60),
    tlf INT,
    direcc VARCHAR(100)
);