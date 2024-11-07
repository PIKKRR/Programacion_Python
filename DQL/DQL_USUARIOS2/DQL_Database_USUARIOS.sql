-- 1. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG

SELECT nombre, telefono, marca
FROM tblusuarios
WHERE marca NOT IN ("LG", "SAMSUNG");

-- 2. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL

SELECT usuario,telefono,compania
FROM tblusuarios
WHERE compania="IUSACELL";

-- 3. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL

SELECT usuario,telefono,compania
FROM tblusuarios
WHERE compania <> "TELCEL";

-- 4. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA

SELECT AVG(saldo) as SaldoPromedioNokia
FROM tblusuarios
WHERE marca = "NOKIA";

-- 5. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL

SELECT usuario,telefono,compania
FROM tblusuarios
WHERE compania IN ("IUSACELL","AXEL");

-- 6. Mostrar el email de los usuarios que no usan yahoo

SELECT usuario,email
FROM tblusuarios
WHERE email NOT LIKE "%yahoo.com";

-- 7. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL

SELECT usuario,telefono,compania
FROM tblusuarios
WHERE compania NOT IN ("TELCEL","IUSACELL");


-- 8. Listar el login y teléfono de los usuarios con compañia telefónica UNEFON

SELECT usuario,telefono,compania
FROM tblusuarios
WHERE compania = "UNEFON";


-- 9. Listar las diferentes marcas de celular en orden alfabético descendentemente

SELECT DISTINCT marca
FROM tblusuarios
ORDER BY marca desc;

-- 10. Listar las diferentes compañias en orden alfabético aleatorio

SELECT DISTINCT compania
FROM tblusuarios
ORDER BY rand();

-- 11. Listar el login de los usuarios con nivel 0 o 2

SELECT usuario,nivel
FROM tblusuarios
WHERE nivel IN (0,2)
ORDER BY nivel;


-- 12. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG

SELECT AVG(saldo) as SaldoPromedioLG
FROM tblusuarios
WHERE marca = "LG";