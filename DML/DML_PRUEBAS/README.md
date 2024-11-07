## Objetivo: Modificar la información almacenada en una base de datos relacional empleando el lenguaje de manipulación de datos.

Crear una BD que se denominará pruebas y en ella realizar los siguientes pasos.

```sql
A) Crear la tabla agenda con los siguientes campos:
apellido (cadena de 30 máximo)
nombre (cadena de 20 máximo)
domicilio (cadena de 30 máximo)
teléfono (número de 9)
prefijo (cadena de 5 con valor defecto +0034)
B) Insertar los siguientes registros:
('ALVAREZ','ALBERTO','COLON 123',423456798)
('JUAREZ','JUAN','AVELLANEDA 135',445878778)
('LOPEZ','MARIA','URQUIZA 333',454545445, '+0047')
('LOPEZ','JOSE','URQUIZA 333', 423456798);
('SALAS','SUSANA','GRAL. PAZ 1234',412345612, '+0036');

C) Diversos procesos DML:
Actualizar el registro cuyo nombre sea "JUAN" por "JOSE"
Eliminar los registros cuyo número telefónico sea igual a 423456798.
Eliminar todos los registros.
D) Añade un nuevo registro con tus datos personales.

E) Actualiza el apellido LOPEZ con GARCIA.

F) Cambia el nombre de JOSE por ROBERTO.

G) Actualiza el teléfono 423456798 por 123456789 de Alberto.