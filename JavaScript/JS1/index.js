// Variables y tipos de datos

let nombre = "Ana"; //Cadena de texto String
let edad = 25; //Número entero Integer
const PI = 3.14; //Constante

let frase = "Hola Mundo";
let longitud = frase.length; // Longitud de la cadena

let mayusculas = frase.toUpperCase(); // Convertir a mayúsculas
let minusculas = frase.toLowerCase(); // Convertir a minúsculas

let subcadena = frase.slice(0, 4); // Extraer una subcadena

//Operadores

//let resultado = 5 / 2; //Va a salir un Double 2.5

let resultado = 5 / 2; 
let resultadoDouble = parseFloar(resultado) //Convertir a double de forma explícita
console.log(resultadoDouble);

let x = 10;
let y = 5;

let suma = x + y; // Suma
let resta = x - y; // Resta
let multiplicacion = x * y; // Multiplicación
let division = x / y; // División

let modulo = x % y; // Módulo
let potencia = x ** y; // Potencia

let asignacionSuma = x += y; // Asignación de suma
let comparacion = (x === y); // Igualdad estricta

let andLogico = (x < 10 && y > 3); // Operador lógico AND
let orLogico = (x < 10 || y > 3); // Operador lógico OR

console.log(suma);

//Condicionales

let hora = 10;

if (hora < 12) {
    console.log("Buenos días");
} else {
    console.lot("Buenas tardes");
}

//Operador ternario

let hora2 = 10;

let mensaje = (hora < 12)? "Buenos días" : "Buenas tardes";
console.log(mensaje);

//Bucles

for (let i=0; i < 5; i++){
    console.log("Número: " + i);
}
i = 5;
a = ++i; //a = 6, i = 6 incrementa primero , luego asigna
b = i++; // b = 6, i = 7 asigna primero, luego incrementa


// Funciones

function saludar(nombre) {
    console.log("¡Hola, " + nombre + "!");
}

saludar("Ana"); // Llama a la función

 // Ejemplo algo de POO
 
let persona = {
    nombre:"Juan",
    edad: 30,
    ciudad: "Málaga"
};

console.log(persona.nombre); //Saldría Juan