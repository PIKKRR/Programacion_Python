-- 1. Obtener un listado con el número y nombre de los clientes atendidos por el vendedor con nombre 'CALVO'.

SELECT cliente_no, nombre 
FROM clientes
WHERE vendedor_no LIKE (SELECT emp_no FROM empleados WHERE apellido LIKE 'CALVO');


-- 2. Obtener un listado con los números de pedido, números de producto y fecha de los pedidos realizados por el cliente con nombre 'EDICIONES SANZ'.

SELECT pedido_no,producto_no,fecha_pedido
FROM pedidos
WHERE cliente_no LIKE (SELECT cliente_no FROM clientes WHERE nombre LIKE 'EDICIONES SANZ');

-- 3. Obtener el número, nombre y límite de crédito de los clientes con crédito inferior a la media de los créditos.

SELECT cliente_no,nombre,ifnull(limite_credito,0)
FROM clientes
WHERE limite_credito <( SELECT AVG (ifnull(limite_credito,0)) FROM clientes );

-- 4. Visualizar los datos del producto más caro.

SELECT *
FROM productos
WHERE precio_actual = (SELECT MAX(precio_actual) FROM productos);

-- 5. Listar los clientes que han hecho algún pedido de 'DESTRUCTORA DE PAPEL A3'.

SELECT cliente_no
FROM clientes 
WHERE cliente_no = (SELECT producto_no FROM productos WHERE descripcion LIKE 'DESTRUCTORA DE PAPEL A3');

-- 6. Obtener los vendedores con más de dos clientes.

SELECT DISTINCT apellido
FROM empleados
WHERE emp_no = (SELECT vendedor_no FROM clientes GROUP BY 1 HAVING count(*)>2 );

-- 7. Conseguir los apellidos y oficios de los empleados del departamento 10 cuyo oficio sea idéntico al de cualquiera de los empleados del departamento de VENTAS.



-- 8. Visualizar los vendedores con clientes que no tengan ningún pedido.



-- 9. Seleccionar el departamento en el que trabaja el empleado con mayor salario, visualizando el nombre del departamento.



-- 10. Seleccionar aquellos empleados cuyo salario sea menor a la media de los salarios de su departamento.



-- 11. Obtener los nombres y las localidades de los clientes que tengan pedidos.

