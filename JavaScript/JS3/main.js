let colorines = document.querySelector(".titulo");

function Cambiar(){
    colorines.style.color = "green";
}

function Cambiarboton(){
    let boton = document.querySelector(".boton");
    boton.style.backgroundColor = "red";
}

let tercerBoton = document.getElementById("boton");

tercerBoton.addEventListener("mouseover", function() {
    tercerBoton.style.backgroundColor = "yellow";
});

tercerBoton.addEventListener("mouseout", function() {
    tercerBoton.style.backgroundColor = "";
});
