DROP DATABASE IF EXISTS queries_2023;
CREATE DATABASE IF NOT EXISTS queries_2023;

USE queries_2023;

CREATE TABLE materias(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  curso INT,
  esp ENUM('Automotores', 'Computacion', 'Ciclo basico'),
  cant_horas INT,
  contraturno BOOLEAN,
  rotacion VARCHAR(255)
);
CREATE TABLE alumnos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  dni INT UNIQUE,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  curso INT,
  esp ENUM('Automotores', 'Computacion', 'Ciclo basico')
);
CREATE TABLE jugadores(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  altura INT,
  edad INT,
  pos ENUM('ARQ','DEF','MED','DEL'),
  equipo INT
);
CREATE TABLE equipos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  estadio VARCHAR(255),
  ciudad VARCHAR(255),
  fecha_fund DATE,
  cant_socios INT,
  division VARCHAR(255),
  campeonatos INT
);

CREATE TABLE provincias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  capital VARCHAR(60),
  gobernador VARCHAR(60),
  poblacion INT,
  superficie INT,
  autonoma_desde DATE
);

CREATE TABLE ciudades (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  provincia INT,
  poblacion INT,
  superficie INT,
  fundacion DATE,
  intendente VARCHAR(60),
  altitud INT,
  FOREIGN KEY (provincia) REFERENCES provincias(id)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  apellido VARCHAR(60),
  tel VARCHAR(20),
  calle VARCHAR(40),
  altura INT,
  localidad INT,
  FOREIGN KEY (localidad) REFERENCES ciudades(id)
);

CREATE TABLE productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descripcion VARCHAR(60),
  marca VARCHAR(40),
  precio DECIMAL(7,2),
  stock INT
);

CREATE TABLE compras (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
  cliente INT NOT NULL,
  producto INT NOT NULL,
  cant INT DEFAULT 1,
  FOREIGN KEY (cliente) REFERENCES clientes(id),
  FOREIGN KEY (producto) REFERENCES productos(id)
);

ALTER TABLE provincias ADD COLUMN region VARCHAR(20);
