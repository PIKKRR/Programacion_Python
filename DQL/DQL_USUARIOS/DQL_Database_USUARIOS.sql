-- 1. Listar los nombres de los usuarios

SELECT nombre 
FROM tblusuarios;

-- 2. Calcular el saldo máximo de los usuarios de sexo “Mujer”

SELECT max(saldo) 
FROM tblusuarios
WHERE sexo="M";

-- 3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY

SELECT nombre,telefono
FROM tblusuarios
WHERE marca IN ('NOKIA', 'BLACKBERRY', 'SONY');

-- 4. Contar los usuarios sin saldo o inactivos

SELECT count(usuario)
FROM tblusuarios
WHERE saldo=0 OR activo=0;

-- 5. Listar el login de los usuarios con nivel 1, 2 o 3

SELECT usuario,nivel
FROM tblusuarios
WHERE nivel IN (1,2,3);

-- 6. Listar los números de teléfono con saldo menor o igual a 300

SELECT telefono
FROM tblusuarios
WHERE saldo <= 300;

-- 7. Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL

SELECT SUM(saldo) AS SumaUsuarios
FROM tblusuarios
WHERE compania = "NEXTEL";


-- 8. Contar el número de usuarios por compañía telefónica

SELECT compania,count(usuario) AS Usuarios
FROM tblusuarios
GROUP BY compania;

-- 9. Contar el número de usuarios por nivel

SELECT nivel,count(usuario) AS NumUsuarios
FROM tblusuarios
GROUP BY nivel;

-- 10. Listar el login de los usuarios con nivel 2

SELECT usuario as UsuariosNivel2
FROM tblusuarios
WHERE nivel=2;

-- 11. Mostrar el email de los usuarios que usan gmail

SELECT email as EmailConGmail
FROM tblusuarios
WHERE email LIKE "%gmail.com";

-- 12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

SELECT nombre,telefono,marca
FROM tblusuarios
WHERE marca IN ("LG","SAMSUNG","MOTOROLA")
ORDER BY marca ;
