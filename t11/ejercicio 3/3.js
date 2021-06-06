const DOM = {
    btnCalculadora: document.querySelectorAll(".grid > div"),
    divPistas: document.getElementById("pistas")
}

let numOculto = parseInt(Math.random() * 10);
let puntuacion = 5;
let contador = 0;
let juegoTerminado = false;

function comparar(event) {
    if (juegoTerminado == false) {
        event.target.style.backgroundColor = "red";
    
        contador++;
        var numElegido = event.target.innerHTML;
        if (numElegido > numOculto) {
            DOM.divPistas.innerHTML = "¡Más abajo!";
            puntuacion--;
        } else if (numElegido < numOculto) {
            DOM.divPistas.innerHTML = "¡Más arriba!";
            puntuacion--;
        } else {
            DOM.divPistas.innerHTML = "¡Has acertado! Numero de intentos necesarios: " + contador;
            juegoTerminado = true;
        }
    }
}

for (let i = 0; i < DOM.btnCalculadora.length; i++) {
    DOM.btnCalculadora[i].addEventListener("click",comparar);
}