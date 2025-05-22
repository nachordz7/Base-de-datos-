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
    especialidad  ENUM('automotores','computacion','ciclo basico') DEFAULT 'ciclo basico' NOT NULL

CREATE TABLE materias(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(60) NOT NULL,
    horas TYNYINT NOT NULL,
    ano TYNYINT NOT NULL,
    especialidad ENUM('automotores','computacion','ciclo basico') DEFAULT 'ciclo basico' NOT NULL
);

CREATE TABLE notas(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    alumno INT NOT NULL,
    materia INT NOT NULL,
    tipocalificacion ENUM('1c', '2c', 'F') NOT NULL,
    nota TYNYINT NOT NULL, 
    fechacarga TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
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


/*cosas nuevas*/

CREATE TABLE profesores (
cuil INT PRYMARY KEY, 
dni INT UNIQUE, 
mail VARCHAR (60) UNIQUE, 
tel INT, 
nombre VARCHAR(60) NN, 
apellido VARCHAR(60) NN, 
f_nac DATE, 
turnos VARCHAR(50) NN
);

ALTER TABLE materias ADD COLUMN profesor INT;
ALTER TABLE materias ADD FOREIGN KEY (profesor) REFERENCES profesores (cuil);