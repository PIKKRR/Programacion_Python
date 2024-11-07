CREATE DATABASE empresa;

USE empresa;

CREATE TABLE Proveedores (
    ID_Proveedor VARCHAR(20) NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    Provincia VARCHAR(10) NOT NULL,
    Ciudad VARCHAR(20) NOT NULL
);

CREATE TABLE Piezas (
    ID_Pieza VARCHAR(20) NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Color VARCHAR(20) NOT NULL,
    Precio INT(6) NOT NULL
);

CREATE TABLE Categorias (
    ID_Categoria VARCHAR(20) NOT NULL,
    Nombre VARCHAR(20) NOT NULL
);

ALTER TABLE Proveedores 
    ADD PRIMARY KEY (ID_Proveedor);

ALTER TABLE Piezas 
    ADD PRIMARY KEY (ID_Pieza);

ALTER TABLE Categorias 
    ADD PRIMARY KEY (ID_Categoria);

ALTER TABLE Proveedores
    ADD COLUMN ID_Pieza VARCHAR(20),
    ADD CONSTRAINT fk_proveedores_piezas FOREIGN KEY (ID_Pieza) REFERENCES Piezas(ID_Pieza);

ALTER TABLE Piezas
    ADD COLUMN ID_Categoria VARCHAR(20),
    ADD CONSTRAINT fk_piezas_categorias FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria);
