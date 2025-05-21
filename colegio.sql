DROP DATABASE IF EXISTS colegio;
CREATE DATABASE colegio;
USE colegio;

CREATE TABLE alumnos(
    dni INT(8) NOT NULL PRIMARY KEY ,
    nombres VARCHAR(60) NOT NULL,
    apellidos VARCHAR(60) NOT NULL,
    fecha_nac date NOT NULL, 
    curso INT NOT NULL,
    division INT NOT NULL,
    especialidad VARCHAR(60) NOT NULL
);

CREATE TABLE materias(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(60) NOT NULL,
    horas INT NOT NULL,
    ano INT NOT NULL,
    especialidad VARCHAR(60) NOT NULL
);

CREATE TABLE notas(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    alumno INT(8) NOT NULL,
    materia INT NOT NULL,
    tipo_calificacion VARCHAR(60) NOT NULL,
    nota INT NOT NULL, 
    fecha_carga DATE NOT NULL,
    FOREIGN KEY (alumno) REFERENCES alumnos(dni),
    FOREIGN KEY (materia) REFERENCES materias(id)
);

CREATE TABLE telefonos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    alumno INT NOT NULL,
    parentesco VARCHAR(60) NOT NULL,
    tel INT NOT NULL,
    FOREIGN KEY (alumno) REFERENCES alumnos(dni)
); 
