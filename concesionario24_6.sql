DROP DATABASE IF EXISTS concesionario;
CREATE DATABASE concesionario ;
USE concesionario;

CREATE TABLE autos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    patente VARCHAR(20),
    marca VARCHAR(60),
    modelo VARCHAR(60),
    anio YEAR,
    duenio INT
);

CREATE TABLE personas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100),
    nombre VARCHAR(60),
    apellido VARCHAR(60),
    edad INT,
    coche INT,
    FOREIGN KEY (coche) REFERENCES autos(id)
);

 ALTER TABLE autos ADD FOREIGN KEY (duenio) REFERENCES personas (id);
