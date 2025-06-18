DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes(
    dni INT PRIMARY KEY,
    nombre VARCHAR(60),
    apellido VARCHAR(60),
    fecha_nac DATE,
    obra_social VARCHAR(60)
);

CREATE TABLE medicos(
    dni INT PRIMARY KEY,
    cuil INT,
    nombre VARCHAR(60),
    apellido VARCHAR(60),
    salario DECIMAL(10,2),
    especialidad VARCHAR(60),
    calle VARCHAR(60),
    altura INT,
    locales VARCHAR(60)
);

CREATE TABLE historias_clinicas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    paciente INT,
    desde
);

CREATE TABLE consultas(
    medico INT,
    paciente INT,
    PRIMARY KEY(medico,paciente),
    FOREIGN KEY (medico) REFERENCES medicos(dni), 
    FOREIGN KEY (paciente) REFERENCES pacientes(dni) 
);