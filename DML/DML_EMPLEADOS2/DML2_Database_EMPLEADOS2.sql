UPDATE delegaciones
	SET direccion = 'Langostino, 12'
	WHERE nombre = 'D.HUELVA';

UPDATE departamentos
	SET director = 'EMP10'
	WHERE nombre = 'DEP SEVILLA 01';

UPDATE departamentos
	SET presupuesto = presupuesto - 5000
	WHERE presupuesto < 180000;
	
UPDATE departamentos
	SET presupuesto = presupuesto - (presupuesto*0.1)
	WHERE presupuesto > 180000;


UPDATE empleados
	SET salario = salario + (salario*0.05)
	WHERE fec_nac < '1980-01-01';

UPDATE empleados
	SET salario = salario + 1000
	WHERE fec_nac >= '1980-01-01';

DELETE FROM empleados
	WHERE deptno = 'D0123';

UPDATE departamentos
SET dep_sup = NULL
	WHERE dep_sup = 'D0123';

DELETE from departamentos
	WHERE nombre = 'DEP JAEN 01';

DELETE from empleados
	WHERE nombre = 'alfonso';

UPDATE departamentos
	SET cod_del = NULL
	WHERE cod_del = '21000';

DELETE from delegaciones
	WHERE nombre = 'D.HUELVA';
