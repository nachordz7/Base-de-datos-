DROP DATABASE IF EXISTS universidad;
CREATE DATABASE universidad;
USE universidad;

CREATE  TABLE profesores(
    dni INT PRIMARY KEY,
    cuil INT,
    nombre VARCHAR(60)
);

CREATE TABLE tesis(
    nombre VARCHAR(60) PRIMARY KEY,
    tema VARCHAR(60),
    abstract INT,
    director INT,
    FOREIGN KEY (director) REFERENCES profesores(dni)
);

CREATE TABLE alumnos (
    dni INT PRIMARY KEY, 
    nombre VARCHAR(60),
    tesis VARCHAR(60), 
    FOREIGN KEY (tesis) REFERENCES tesis(nombre)
);

CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60),
    nivel INT,
    horas INT,
    prof INT,
    FOREIGN KEY (prof) REFERENCES profesores(dni)
);

CREATE TABLE telefonos(
    tel INT,
    alumno INT,
    PRIMARY KEY(tel,alumno),
    FOREIGN KEY (alumno) REFERENCES alumnos(dni)
);

CREATE TABLE cursadas(
    alumno INT,
    materia INT,
    nota INT,
    PRIMARY KEY(alumno, materia),
    FOREIGN KEY (alumno) REFERENCES alumnos(dni),
    FOREIGN KEY (materia) REFERENCES materias(id)
);






