Algoritmo JuegoAdivinar
	
	Definir numero1,numerocorrecto Como Real
	numerocorrecto=Aleatorio(1,20)
	
	Escribir "Adivina el número del 1 al 20 en 10 intentos, introduce un número: "
	Leer numero1
	
	
	Para i=10 Hasta 0 Con paso -1
		
		Si numero1<>numerocorrecto
		Escribir "Intentalo de nuevo, te quedan " , i , " intento/s"
		Leer numero1
		SiNo
		Escribir "¡Enhorabuena has adivinado el número!"
		Leer numero1
			
		FinSi
		
	FinPara
	
	Escribir "Has perdido todos tus intentos, reinicia el juego"
	
	
FinAlgoritmo
