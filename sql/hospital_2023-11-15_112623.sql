


CREATE DATABASE hospital;

use hospital;


DROP TABLE IF EXISTS dep;

CREATE TABLE
    dep (
        dept_no int(11) NOT NULL,
        Dnombre varchar(50) DEFAULT NULL,
        loc varchar(50) DEFAULT NULL,
        PRIMARY KEY (dept_no)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

DROP TABLE IF EXISTS emp;

CREATE TABLE
    emp (
        emp_no int(11) NOT NULL,
        apellido varchar(50) DEFAULT NULL,
        oficio varchar(50) DEFAULT NULL,
        dir int(11) DEFAULT NULL,
        fecha_alt date DEFAULT NULL,
        salario decimal(9, 2) DEFAULT NULL,
        comision decimal(9, 2) DEFAULT NULL,
        dept_no int(11) DEFAULT NULL,
        PRIMARY KEY (emp_no),
        KEY dept_no (dept_no),
        CONSTRAINT emp_ibfk_1 FOREIGN KEY (dept_no) REFERENCES dep (dept_no)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

DROP TABLE IF EXISTS hospital;

CREATE TABLE
    hospital (
        hospital_cod INT NOT NULL,
        nombre VARCHAR(50) NULL,
        direccion VARCHAR(50) NULL,
        telefono VARCHAR(50) NULL,
        num_cama INT NULL,
        PRIMARY KEY (hospital_cod)
    );

DROP TABLE IF EXISTS doctor;

CREATE TABLE
    doctor (
        doctor_no INT NOT NULL,
        hospital_cod INT NOT NULL,
        apellido VARCHAR(50) NULL,
        especialidad VARCHAR(50) NULL,
        PRIMARY KEY (doctor_no),
        FOREIGN KEY (hospital_cod) REFERENCES hospital (hospital_cod)
    );

DROP TABLE IF EXISTS sala;

CREATE TABLE
    sala (
        sala_cod INT NOT NULL,
        hospital_cod INT NOT NULL,
        nombre VARCHAR(50) NULL,
        num_cama INT NULL,
        PRIMARY KEY (sala_cod),
        FOREIGN KEY (hospital_cod) REFERENCES hospital (hospital_cod)
    );

DROP TABLE IF EXISTS plantila;

CREATE TABLE
    plantilla (
        empleado_no INT NOT NULL,
        sala_cod INT NOT NULL,
        hospital_cod INT NOT NULL,
        apellido VARCHAR(50) NULL,
        funcion VARCHAR(50) NULL,
        telefono VARCHAR(50) NULL,
        salario NUMERIC(9, 2) NULL,
        PRIMARY KEY (empleado_no),
        FOREIGN KEY (sala_cod) REFERENCES sala (sala_cod),
        FOREIGN KEY (hospital_cod) REFERENCES hospital (hospital_cod)
    );

DROP TABLE IF EXISTS enfermo;

CREATE Table
    enfermo (
        incripcion int not null,
        apellido VARCHAR(50) null,
        direccion VARCHAR(50) null,
        fecha_nacm VARCHAR(50) null,
        sexo VARCHAR(50) null,
        nss int null
    );

