const DOM = {
    btnCalculadora: document.querySelectorAll(".grid > div"),
    divPistas: document.getElementById("pistas")
}

let numOculto = parseInt(Math.random() * 10);
let puntuacion = 5;

function comparar(event) {
    event.target.style.backgroundColor = "red";
    
    var numElegido = event.target.value;
    if (numElegido > numOculto) {
        DOM.divPistas.innerHTML = "¡Más abajo!";
        puntuacion--;
    } else if (numElegido < numOculto) {
        DOM.divPistas.innerHTML = "¡Más arriba!";
        puntuacion--;
    } else {
        DOM.divPistas.innerHTML = "¡Has acertado!";

    }
}

for (let i = 0; i < DOM.btnCalculadora.length; i++) {
    DOM.btnCalculadora[i].addEventListener("click",comparar);
}