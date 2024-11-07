CREATE DATABASE pedidos;

USE pedidos;

CREATE TABLE pedido (
	RefPed VARCHAR (5) NOT NULL PRIMARY KEY,
	FecPed DATE NOT NULL
);

CREATE TABLE LineaPedido(
	RefPed VARCHAR (5) NOT NULL,
	CodArt VARCHAR (5) NOT NULL,
	CantArt INT (5) NOT NULL
);

CREATE TABLE Articulo(
	CodArt VARCHAR (5) NOT NULL PRIMARY KEY,
	DesArt VARCHAR (30) NOT NULL,
	PVPArt DECIMAL (6,2) NOT NULL
);

ALTER TABLE LineaPedido
	ADD CONSTRAINT FK_RefPed FOREIGN KEY (RefPed) REFERENCES Pedido (RefPed),
	ADD CONSTRAINT FK_CodArt FOREIGN KEY (CodArt) REFERENCES Articulo (CodArt);

INSERT INTO Pedido (RefPed, FecPed)
VALUES ('P0001', '2014-02-16'),
       ('P0002', '2014-02-18'),
       ('P0003', '2014-02-23'),
       ('P0004', '2014-02-25');

INSERT INTO Articulo (CodArt,DesArt,PVPArt)
VALUES ('A0043','Boligrafo azul fino', '0.78'),
	('A0078','Boligrafo rojo normal', '1.05'),
	('A0075','Lapiz 2B', '0.55'),
	('A0012','Goma de borrar', '0.15'),
	('A0089','Sacapuntas', '0.25');

INSERT INTO LineaPedido (RefPed,CodArt,CantArt)
VALUES ('P0001','A0043','10'),
	('P0001','A0078','12'),
	('P0002','A0043','5'),
	('P0003','A0075','20'),
	('P0004','A0012','15'),
	('P0004','A0043','5'),
	('P0004','A0089','50');

	



	