-- 1. Muestra los nombres de los artículos comprados por “cliente nueve”.

SELECT articulos.nombre AS Articulo_Nombre, clientes.nombre AS Cliente_nombre
FROM articulos
INNER JOIN facturas ON articulos.coda = facturas.coda
INNER JOIN clientes ON facturas.codc = clientes.codc
WHERE clientes.nombre LIKE "cliente nueve";


-- 2. Muestra el nombre del artículo y el nombre del proveedor que lo suministra (con los alias, Nombre Artículo y Nombre Proveedor respectivamente), de los artículos que tengan un pvp superior a 500, ordenados  por nombre de artículo.

SELECT articulos.nombre AS Articulo_nombre, proveedores.nombre AS Nombre_proveedor
FROM articulos
INNER JOIN suministros ON suministros.coda = articulos.coda
INNER JOIN proveedores ON proveedores.codp = suministros.codp
WHERE articulos.pvp > 500
ORDER BY articulos.nombre;

-- 3. Muestra aquellos suministros que tengan un puc mayor a cualquiera de los que tiene el proveedor p11.

SELECT suministros.codp, suministros.coda, suministros.puc
FROM suministros
WHERE suministros.puc > (
    SELECT MAX(suministros.puc)
    FROM suministros
    WHERE suministros.codp = 'p11'
);

-- 4. Calcular cuánto se ha vendido por cada cliente,  reflejando el nombre del cliente y el importe de la venta con el alias total_cliente.

SELECT clientes.nombre AS nombre_cliente, SUM(facturas.precio) AS total_cliente
FROM clientes
INNER JOIN facturas ON clientes.codc = facturas.codc
GROUP BY clientes.codc;

-- 5. Mostrar para cada artículo, el nombre del artículo y la cantidad total que se ha facturado de ese artículo (ctd de la tabla facturas).

SELECT articulos.nombre,facturas.ctd AS total_facturado
FROM articulos
INNER JOIN facturas ON facturas.coda = articulos.coda;

-- 6. Muestra todos los artículos que no han sido comprados por ningún cliente, ordenados por código de nombre de artículo.

SELECT articulos.nombre
FROM articulos
LEFT JOIN facturas ON facturas.coda = articulos.coda
WHERE facturas.coda IS NULL
ORDER BY articulos.coda;

-- 7. Muestra el nombre del cliente y el nombre del artículo, de aquellos clientes que han comprado artículos suministrados por el proveedor p3

SELECT clientes.nombre AS Cliente_nombre , articulos.nombre AS Articulo_nombre
FROM clientes
INNER JOIN facturas ON facturas.codc = clientes.codc
INNER JOIN articulos ON articulos.coda = facturas.coda
INNER JOIN suministros ON articulos.coda = suministros.coda
INNER JOIN proveedores ON suministros.codp = proveedores.codp
WHERE proveedores.codp = "p3";

-- 8. Mostrar el nombre del proveedor y el nombre del artículo de los suministros comprados al "Proveedor tres“.

SELECT proveedores.nombre AS Nombre_proveedor, articulos.nombre AS Articulo_nombre
FROM proveedores
INNER JOIN suministros ON suministros.codp = proveedores.codp
INNER JOIN articulos ON articulos.coda = suministros.coda
WHERE proveedores.nombre = "Proveedor tres";