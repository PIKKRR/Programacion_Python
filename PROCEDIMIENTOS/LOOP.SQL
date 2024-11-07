DELIMITER //

CREATE PROCEDURE calcular_cuadrados_loop(IN tope INTEGER)
BEGIN
    DECLARE i INTEGER DEFAULT 1;
    
    -- Vaciar la tabla cuadrados
    TRUNCATE TABLE cuadrados;
    
    -- Utilizar LOOP para insertar valores
    loop_label: LOOP
        IF i > tope THEN
            LEAVE loop_label;
        END IF;
        
        INSERT INTO cuadrados (numero, cuadrado) VALUES (i, i * i);
        SELECT i AS numero, i * i AS cuadrado;
        SET i = i + 1;
    END LOOP loop_label;
END //

DELIMITER ;
