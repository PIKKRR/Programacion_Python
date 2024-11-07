Algoritmo SumarHastaNeg
	
	Definir num1, suma Como Entero
	c=0
	
	Repetir
		Escribir  "Introduce un número: " "(",c,")" //contador para saber cuantos números llevo
		Leer num1
		c=c+1
		Si c<=10 
			suma=suma+num1
			//Por si quieres ir sabiendo la suma que da en pantalla los primeros 10 números
			//Escribir "La suma es: " suma
		

		FinSi
	Hasta Que num1<0
	 Escribir "La suma de los 10 primeros números es " suma
	

	
FinAlgoritmo
