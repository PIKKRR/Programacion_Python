DELIMITER //

CREATE PROCEDURE calcular_cuadrados_while(IN tope INTEGER)
BEGIN
    DECLARE i INTEGER DEFAULT 1;
    
    -- Vaciar la tabla cuadrados
    TRUNCATE TABLE cuadrados;
    
    -- Utilizar WHILE para insertar valores
    WHILE i <= tope DO
        INSERT INTO cuadrados (numero, cuadrado) VALUES (i, i * i);
        SELECT i AS numero, i * i AS cuadrado;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;
