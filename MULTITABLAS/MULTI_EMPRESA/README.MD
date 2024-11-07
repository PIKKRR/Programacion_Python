## Usa la siguiente tabla creada. Más abajo están las consultas.

```sql

DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa CHARACTER SET utf8mb4;
USE empresa;

CREATE TABLE departamento (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  presupuesto DOUBLE UNSIGNED NOT NULL,
  gastos DOUBLE UNSIGNED NOT NULL
);

CREATE TABLE empleado (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR(40) NOT NULL,
  apellido1 VARCHAR(40) NOT NULL,
  apellido2 VARCHAR(40),
  codigo_departamento INT UNSIGNED,
  FOREIGN KEY (codigo_departamento) REFERENCES departamento(codigo)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'AARON', 'RIVERO', 'GOMEZ', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'ADEL', 'SALAS', 'DIAZ', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'ADOLFO', 'RUBIO', 'FLORES', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'ADRIAN', 'SUAREZ', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'MARCOS', 'LOYOLA', 'MENDEZ', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'MARIA', 'SANTANA', 'MORENO', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'PILAR', 'RUIZ', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'JOSE', 'RUIZ', 'SANTANA', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'JUAN', 'GOMEZ', 'LOPEZ', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'DIEGO','FLORES', 'SALAS', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'MARTA','HERRERA', 'GIL', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'IRENE','SALAS', 'FLORES', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'JUAN ANTONIO','SAEZ', 'GUERRERO', NULL);

```

# Realizar estas consultas.


1. Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.
2. Devuelve el nombre del departamento donde trabaja el empleado JOSE RUIZ SANTANA.
3. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno.
4. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.
5. Devuelve un listado con el código y el nombre del departamento, de aquellos departamentos que tienen empleados.
6. Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solo de aquellos departamentos que tienen empleados. El valor del presupuesto actual se puede calcular restando al valor del presupuesto inicial (atributo presupuesto) el valor de los gastos que ha generado (atributo gastos).
7. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente por apellidos y nombre.
8. Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
9. Devuelve una lista con el nombre de los empleados que tienen los departamentos que tienen un presupuesto entre 100000 y 200000 euros.
10. Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. Hay que tener en cuenta que no se debe mostrar los nombres de departamentos que estén repetidos.