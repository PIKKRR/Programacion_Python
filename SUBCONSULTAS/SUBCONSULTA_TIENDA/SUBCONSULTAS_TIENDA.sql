
--1. Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.

SELECT f.nombre
FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante
WHERE f.nombre <> 'Lenovo'
GROUP BY f.nombre
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM producto
    WHERE codigo_fabricante = (
        SELECT codigo
        FROM fabricante
        WHERE nombre = 'Lenovo'
    )
);

 --2. Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.

SELECT nombre,precio
FROM producto
WHERE precio >= ALL (SELECT precio FROM producto);

--3. Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.

SELECT nombre,precio
FROM producto
WHERE precio <= ALL (SELECT precio FROM producto);

--4. Devuelve los nombres de los fabricantes que tienen productos asociados.

SELECT DISTINCT nombre
FROM fabricante
WHERE codigo IN (SELECT codigo_fabricante FROM producto);

--5. Devuelve los nombres de los fabricantes que no tienen productos asociados.

SELECT DISTINCT nombre
FROM fabricante
WHERE codigo NOT IN (SELECT codigo_fabricante FROM producto);
