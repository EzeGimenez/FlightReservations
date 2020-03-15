CREATE DATABASE prueba;
USE prueba;

CREATE TABLE auto(
	patente VARCHAR(6) NOT NULL,
	color VARCHAR(20) NOT NULL,
	modelo VARCHAR(20) NOT NULL,
	ano INT UNSIGNED NOT NULL,

	PRIMARY KEY (patente)
);

CREATE TABLE persona(
	dni INT UNSIGNED NOT NULL,
	nombre VARCHAR(40) NOT NULL,
	fecha_nac DATE NOT NULL,
	patente_auto VARCHAR(6) NOT NULL,

	PRIMARY KEY (dni),
	FOREIGN KEY (patente_auto) REFERENCES auto(patente)
);