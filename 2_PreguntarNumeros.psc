Algoritmo PreguntarNumeros
	
	Definir contador,num1,num2 Como Real
	Escribir "¿Cuántos números quieres introducir?"
	Leer contador
	
	Si contador > 0 Entonces
		Escribir "Introduzca el valor del número"
		Leer num2
	FinSi
	
	
	Para contador<-2 Hasta contador Con Paso 1 Hacer
		Escribir "Introduzca el valor del número" 
		Leer num1
		
		Si num1<num2
			Escribir "Este número no es mayor que el primer número"
		FinSi
		
		
	Fin Para
	
	
	
	
FinAlgoritmo
