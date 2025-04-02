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
