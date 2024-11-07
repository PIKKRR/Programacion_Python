# Procedimientos Almacenados para Cálculo de Cuadrados

## Objetivo

El objetivo de este proyecto es desarrollar procedimientos almacenados utilizando las sentencias del lenguaje SQL incorporadas en un Sistema de Gestión de Bases de Datos (SGBD) relacional.

## Descripción

Se creará una tabla en la base de datos `pruebas` llamada `cuadrados`, la cual tendrá dos atributos:
- `numero` de tipo `INTEGER UNSIGNED`
- `cuadrado` de tipo `INTEGER`

### Procedimientos Almacenados

Se desarrollará un procedimiento almacenado llamado `calcular_cuadrados` con las siguientes características:

1. El procedimiento recibirá un parámetro de entrada llamado `tope` de tipo `INTEGER`.
2. Vaciará la tabla `cuadrados`.
3. Realizará un proceso en el que, desde el valor 1 hasta el valor de `tope` dado, almacenará en la tabla `cuadrados` cada número y su cuadrado.
4. En cada ciclo del bucle, se mostrarán el número y su cuadrado.

La actividad se resolverá utilizando las estructuras de control de bucle `WHILE`, `REPEAT` y `LOOP`.

## Implementación

### Creación de la Tabla

```sql
CREATE DATABASE IF NOT EXISTS pruebas;
USE pruebas;

CREATE TABLE IF NOT EXISTS cuadrados (
    numero INTEGER UNSIGNED,
    cuadrado INTEGER
);
```