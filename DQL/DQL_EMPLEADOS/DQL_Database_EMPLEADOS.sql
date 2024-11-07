/*Calcula el salario medio de los empleados del departamento 20 de la tabla EMPLEADOS.*/

SELECT AVG(salario) AS salario_medio
FROM empleados
WHERE dept_no = 20;

/*Cuenta cuántos registros la tabla EMPLEADOS.*/

SELECT COUNT(emp_no) AS registros
FROM empleados;

/*Cuenta cuántos registros de la tabla EMPLEADOS cobran comisión.*/

SELECT COUNT(comision) AS registros_comision
FROM empleados 
WHERE comision>0;

/*Calcula el salario máximo de la tabla EMPLEADOS.*/

SELECT MAX(salario) AS salario_maximo
FROM empleados;

/*Obtén el máximo nombre (alfabéticamente) de la tabla EMPLEADOS.*/

SELECT apellido AS apellido_maximo
FROM empleados
ORDER BY LENGTH(apellido) DESC
LIMIT 1;

/*Obtén el nombre del empleado que tiene mayor salario.*/

SELECT apellido,salario 
FROM empleados
ORDER BY salario DESC
LIMIT 1;

/*Obtén el mínimo salario de la tabla EMPLEADOS.*/

SELECT salario AS salario_minimo
FROM empleados
ORDER BY salario ASC
LIMIT 1;

/*Obtén el nombre del empleado que tiene el mínimo salario*/

SELECT apellido AS nombre_salario_minimo
FROM empleados
ORDER BY salario ASC
LIMIT 1;

/*Calcula la suma de todos los salarios de la tabla EMPLEADOS.*/

SELECT SUM(SALARIO) AS suma_total
FROM empleados;

/*Obtén la desviación típica de todos los salarios de la tabla EMPLEADOS. Averigua antes que es la desviación típica.*/

SELECT STDDEV(SALARIO) AS DESVIACION_TIPICA_TOTAL
FROM EMPLEADOS;

/*Calcula el número de departamentos que hay en la tabla EMPLEADOS. Después,  calcula el número de personas que hay en cada departamento que hay en la tabla EMPLEADOS.*/

SELECT COUNT(DISTINCT dept_no) AS numero_departamentos
FROM empleados;

SELECT dept_no AS num_departamento, COUNT(emp_no) AS num_empleados
FROM empleados
GROUP BY dept_no;

/*A partir de la tabla EMPLEADOS, visualiza cuántos apellidos empiezan por la letra ‘A’.*/

SELECT apellido AS empiezan_por_A
FROM empleados
WHERE apellido like 'a%';
 
/*Obtén el nombre de los empleados que empiecen por la letra ‘A’ y que tengan máximo salario (de los que empiezan por la letra ‘A’).*/

SELECT apellido AS empiezan_por_A,salario
FROM empleados
WHERE apellido like 'a%'
ORDER BY salario desc
LIMIT 1;





