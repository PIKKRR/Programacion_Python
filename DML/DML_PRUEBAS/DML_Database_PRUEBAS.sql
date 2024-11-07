CREATE DATABASE PRUEBAS;

USE PRUEBAS;

CREATE TABLE agenda (

apellido varchar (30),
nombre varchar (20),
domicilio varchar (30),
telefono char (9),
prefijo char (5)
 );


INSERT INTO agenda (apellido, nombre, domicilio, telefono, prefijo)
VALUES 
  ('ALVAREZ', 'ALBERTO', 'COLON 123', 423456798, NULL),
  ('JUAREZ', 'JUAN', 'AVELLANEDA 135', 445878778, NULL),
  ('LOPEZ', 'MARIA', 'URQUIZA 333', 454545445, '+0047'),
  ('LOPEZ', 'JOSE', 'URQUIZA 333', 423456798, NULL),
  ('SALAS', 'SUSANA', 'GRAL. PAZ 1234', 412345612, '+0036');

UPDATE agenda
SET nombre = 'JOSE'
WHERE nombre = 'JUAN';

DELETE from agenda
WHERE telefono = '423456798' ;

DELETE from agenda;

INSERT INTO agenda (apellido, nombre, domicilio, telefono, prefijo)
VALUES 
  ('ALVAREZ', 'ALBERTO', 'COLON 123', 423456798, NULL),
  ('JUAREZ', 'JUAN', 'AVELLANEDA 135', 445878778, NULL),
  ('LOPEZ', 'MARIA', 'URQUIZA 333', 454545445, '+0047'),
  ('LOPEZ', 'JOSE', 'URQUIZA 333', 423456798, NULL),
  ('SALAS', 'SUSANA', 'GRAL. PAZ 1234', 412345612, '+0036');

INSERT INTO agenda (apellido, nombre, domicilio, telefono, prefijo)
VALUES ('COUSO', 'JOSE', 'AV AMERICA 2', '432563545', '+0034');

UPDATE agenda
SET apellido = 'GARCIA' 
WHERE apellido = 'LOPEZ';

UPDATE agenda
SET nombre = 'ROBERTO' 
WHERE nombre = 'JOSE';

UPDATE agenda
SET telefono = '123456789'
WHERE nombre = 'ALBERTO' AND telefono = '423456798';