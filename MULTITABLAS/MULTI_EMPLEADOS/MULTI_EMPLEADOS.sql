-- 1.  Mostrar para cada empleado, el nombre de departamento y el nombre de dicho empleado y su salario.

SELECT e.EMP_NO, e.APELLIDO, d.DNOMBRE AS NOMBRE_DEPARTAMENTO, e.SALARIO
FROM empleados e
INNER JOIN departamentos d  ON e.DEPT_NO = d.DEPT_NO;

-- 2. Mostrar el nombre de cada empleado y la localidad del departamento en el que trabaja.

SELECT e.APELLIDO AS NOMBRE_EMPLEADO, d.CIUDAD AS LOCALIDAD_DEPARTAMENTO
FROM empleados e
INNER JOIN departamentos d ON e.DEPT_NO = d.DEPT_NO;


-- 3. Mostrar el nombre del departamento y la media de las comisiones de sus empleados.

SELECT d.DNOMBRE AS NOMBRE_DEPARTAMENTO, AVG(e.COMISION) AS MEDIA_COMISIONES
FROM empleados e
INNER JOIN departamentos d ON e.DEPT_NO = d.DEPT_NO
GROUP BY d.DNOMBRE;

-- 4. Mostrar los nombres de los departamentos y el número de empleados de los departamentos que tienen más de dos empleados.

SELECT d.DNOMBRE AS NOMBRE_DEPARTAMENTOS, COUNT(e.EMP_NO) AS NUMERO_EMPLEADOSMIN2
FROM empleados e
INNER JOIN departamentos d ON e.DEPT_NO = d.DEPT_NO
GROUP BY d.DNOMBRE
HAVING COUNT(e.EMP_NO) >=2;

-- 5. Mostrar cuántos empleados hay en cada ciudad de los departamentos.

SELECT COUNT(e.EMP_NO) AS NUMERO_EMPLEADOS, d.CIUDAD
FROM empleados e
INNER JOIN departamentos d ON e.DEPT_NO = d.DEPT_NO
GROUP BY d.CIUDAD;

