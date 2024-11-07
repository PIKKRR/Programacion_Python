-- 1. Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.

SELECT d.nombre AS NOMBRE_DEPARTAMENTO, e.nif, e.nombre
FROM departamento d 
INNER JOIN empleado e ON e.codigo = d.codigo
WHERE nif LIKE "38382980M";


-- 2. Devuelve el nombre del departamento donde trabaja el empleado JOSE RUIZ SANTANA.

SELECT d.nombre AS NOMBRE_DEPARTAMENTO, e.nombre, e.apellido1, e.apellido2
FROM departamento d 
INNER JOIN empleado e ON e.codigo_departamento = d.codigo
WHERE e.nombre = "JOSE" AND e.apellido1 = "RUIZ" AND e.apellido2 = "SANTANA";


-- 3. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno.

SELECT e.nombre AS NOMBRE_EMPLEADO, d.nombre AS NOMBRE_DEPARTAMENTO
FROM empleado e
INNER JOIN departamento d ON e.codigo_departamento = d.codigo;


-- 4. Devuelve un listado con el nombre de los empleados y el nombre del departamento donde trabaja cada uno.Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.

SELECT e.nombre AS NOMBRE_EMPLEADO, d.nombre AS NOMBRE_DEPARTAMENTO, e.apellido1, e.apellido2
FROM empleado e
INNER JOIN departamento d ON e.codigo_departamento = d.codigo
GROUP BY d.nombre,e.nombre,e.apellido1,e.apellido2;


-- 5. Devuelve un listado con el código y el nombre del departamento, de aquellos departamentos que tienen empleados.

SELECT DISTINCT d.codigo, d.nombre AS DEPARTAMENTOS_CON_EMPLEADOS
FROM departamento d 
INNER JOIN empleado e ON e.codigo_departamento=d.codigo
WHERE e.codigo_departamento>=1;


-- 6. Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solo de aquellos departamentos que tienen empleados. El valor del presupuesto actual se puede calcular restando al valor del presupuesto inicial (atributo presupuesto) el valor de los gastos que ha generado (atributo gastos).

SELECT DISTINCT d.codigo, d.nombre, d.presupuesto-d.gastos AS PRESUPUESTO_ACTUAL
FROM departamento d 
INNER JOIN empleado e ON e.codigo_departamento=d.codigo
WHERE e.codigo_departamento>=1;

-- 7. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente por apellidos y nombre.

SELECT *
FROM empleado e
INNER JOIN departamento d ON e.codigo_departamento = d.codigo
WHERE d.nombre = 'I+D'
ORDER BY e.apellido1, e.nombre;

-- 8. Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.

SELECT *
FROM empleado e
INNER JOIN departamento d ON e.codigo_departamento=d.codigo
WHERE d.nombre IN ("Sistemas","Contabilidad", "I+D")
ORDER BY e.nombre; 

-- 9. Devuelve una lista con el nombre de los empleados que tienen los departamentos que tienen un presupuesto entre 100000 y 200000 euros.

SELECT e.nombre, d.nombre,d.presupuesto
FROM empleado e
INNER JOIN departamento d ON e.codigo_departamento=d.codigo
WHERE d.presupuesto BETWEEN 100000 AND 200000;

-- 10. Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. Hay que tener en cuenta que no se debe mostrar los nombres de departamentos que estén repetidos.

SELECT DISTINCT d.nombre, e.apellido2
FROM departamento d 
INNER JOIN empleado e ON e.codigo_departamento=d.codigo
WHERE e.apellido2 IS NULL;
