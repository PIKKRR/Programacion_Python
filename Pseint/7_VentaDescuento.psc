Algoritmo VentaDescuento
	
	Definir venta, descuento, total Como Real
	Escribir "Escribe el artículo para comprobar si tiene descuento: "
	Leer venta
	
	Si venta>=100
		descuento=0.02*venta
		total=venta-descuento
		
	Escribir "Felicidades, el artículo tiene  un descuento del 2%, se quedaría en: ", total " euros"	
	SiNo
	Escribir "Lo siento, el artículo no tiene descuento, se quedaría en: " , venta " euros"
	FinSi


	
	
	
	
	
	
FinAlgoritmo
