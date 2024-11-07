-- 1. Productos con el mismo precio que el producto más caro de Lenovo.

SELECT nombre,max(precio)
FROM producto 
WHERE id_fabricante IN 
    (SELECT nombre 
    FROM fabricante 
    WHERE nombre 
    LIKE "Lenovo");

-- 2. Nombre del producto más caro de Lenovo.

SELECT *
FROM producto
WHERE precio = 
    (SELECT MAX(precio) 
    FROM producto 
    WHERE id_fabricante = 
    (SELECT id 
    FROM fabricante 
    WHERE nombre = 'Lenovo'));

-- 3. Nombre del producto más barato de Hewlett-Packard.

SELECT nombre,min(precio)
FROM producto
WHERE id_fabricante IN 
    (SELECT id 
    FROM fabricante 
    WHERE nombre = "Hewlett-Packard");

-- 4. Productos con precio mayor o igual al producto más caro de Lenovo.

SELECT *
FROM producto
WHERE precio >= (
    SELECT MAX(precio)
    FROM producto
    WHERE id_fabricante = (
        SELECT id
        FROM fabricante
        WHERE nombre = 'Lenovo'
    )
);

-- 5. Productos de Asus con precio superior al precio medio de todos sus productos.

SELECT p.*
FROM producto p
WHERE p.id_fabricante = (
    SELECT id
    FROM fabricante
    WHERE nombre = 'Asus')
        AND p.precio > (
        SELECT AVG(precio) 
        FROM producto 
        WHERE id_fabricante = p.id_fabricante);

-- 6. Fabricantes con el mismo número de productos que Lenovo (usando subconsultas en la cláusula HAVING).

SELECT f.nombre, COUNT(p.id) AS cantidad_productos
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE p.id_fabricante != (
    SELECT id
    FROM fabricante
    WHERE nombre = 'Lenovo'
)
GROUP BY p.id_fabricante
HAVING COUNT(p.id) = (
    SELECT COUNT(id)
    FROM producto
    WHERE id_fabricante = (
        SELECT id
        FROM fabricante
        WHERE nombre = 'Lenovo'
    )
);

-- 7. Fabricantes con productos asociados (utilizando ALL o ANY).

SELECT nombre 
FROM fabricante
WHERE id IN 
    (SELECT id_fabricante 
    FROM producto 
    GROUP BY id_fabricante);

-- 8. Fabricantes sin productos asociados (utilizando IN o NOT IN).

SELECT nombre 
FROM fabricante
WHERE id NOT IN 
    (SELECT id_fabricante 
    FROM producto 
    GROUP BY id_fabricante);

-- 9. Fabricantes sin productos asociados (utilizando EXISTS o NOT EXISTS).

SELECT nombre 
FROM fabricante
WHERE NOT EXISTS (
    SELECT 1 
    FROM producto 
    WHERE producto.id_fabricante = fabricante.id
);

