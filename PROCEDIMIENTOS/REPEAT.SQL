DELIMITER //

CREATE PROCEDURE calcular_cuadrados_repeat(IN tope INTEGER)
BEGIN
    DECLARE i INTEGER DEFAULT 1;
    
    -- Vaciar la tabla cuadrados
    TRUNCATE TABLE cuadrados;
    
    -- Utilizar REPEAT para insertar valores
    REPEAT
        INSERT INTO cuadrados (numero, cuadrado) VALUES (i, i * i);
        SELECT i AS numero, i * i AS cuadrado;
        SET i = i + 1;
    UNTIL i > tope
    END REPEAT;
END //

DELIMITER ;
