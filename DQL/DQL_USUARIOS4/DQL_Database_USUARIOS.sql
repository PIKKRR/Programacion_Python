-- 1. Contar el número de usuarios por marca de teléfono

SELECT COUNT(usuario) AS NumUsuarios, marca
FROM tblusuarios
GROUP BY marca;

-- 2. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG

SELECT nombre,telefono,marca
FROM tblusuarios
WHERE marca <> "LG";

-- 3. Listar las diferentes compañías en orden alfabético ascendente

SELECT DISTINCT compania
FROM tblusuarios
ORDER BY compania;

-- 4. Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON

SELECT SUM(saldo)
FROM tblusuarios
WHERE compania = "UNEFON";

-- 5. Mostrar el email de los usuarios que usan hotmail

SELECT usuario,email
FROM tblusuarios
WHERE email LIKE "%hotmail.com";

-- 6. Listar los nombres de los usuarios sin saldo o inactivos

SELECT nombre,saldo,activo
FROM tblusuarios
WHERE saldo <= 0 OR activo = 0 ;


-- 7. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL

SELECT usuario, telefono, compania
FROM tblusuarios
WHERE compania IN ("IUSACELL" , "TELCEL");

-- 8. Listar las diferentes marcas de celular en orden alfabético ascendente

SELECT DISTINCT marca
FROM tblusuarios
ORDER BY marca asc;

-- 9. Listar las diferentes marcas de celular en orden alfabético aleatorio

SELECT DISTINCT marca
FROM tblusuarios
ORDER BY RAND();

-- 10. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON

SELECT usuario, telefono, compania
FROM tblusuarios
WHERE compania IN ("IUSACELL" , "UNEFON");

-- 11. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA

SELECT nombre, telefono, marca
FROM tblusuarios
WHERE marca NOT IN ("MOTOROLA" , "NOKIA");

-- 12. Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL

SELECT SUM(saldo) 
FROM tblusuarios
WHERE compania = "TELCEL";
