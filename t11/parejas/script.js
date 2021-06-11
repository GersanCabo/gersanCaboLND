const DOM = {
    scn: document.getElementById("tabla_parejas") //tabla donde estaran las cartas
}

let numeroCartas = 9;
let valorCartaAnterior = null;
let vidas = 10;
let cartaAnterior = null;

crearCartas();

/**
 * Funcion que crea el array e inserta los elementos en el HTML
 */
function crearCartas() {
    let numeros = [];
    //Bucle que inserta las parejas de numeros en el array
    for (let i = 1; i <= numeroCartas/2; i++) {
        for (let j = 0; j < 2; j++) {
            numeros.push(i);
        }
    }
    //Condicional en caso de que el numero de cartas sea impar
    if (numeroCartas % 2 != 0) {
        let ultimoElemento = numeros.length;
        let cartaImpar = numeros[ultimoElemento - 1] + 1;
        numeros.push(cartaImpar);
    }
    //Bucle que se encarga de mezclar el array
    for (let i = numeros.length - 1; i > 0; i--) {
		let indiceAleatorio = Math.floor(Math.random() * (i + 1));
		let temporal = numeros[i];
		numeros[i] = numeros[indiceAleatorio];
		numeros[indiceAleatorio] = temporal;
	}
    //Bucle que inserta un div por cada elemento del array
    for (let i = 0; i < numeros.length; i++) {
        let cartaDiv = document.createElement("div");
        let parrafo = document.createElement("p");
        let texto = document.createTextNode(numeros[i]);
        parrafo.appendChild(texto);
        cartaDiv.appendChild(parrafo);
        cartaDiv.className = "invisible";
        DOM.scn.appendChild(cartaDiv);
    }
    aniadirListeners();
}

function aniadirListeners() {
    let cartas = document.querySelectorAll("#tabla_parejas > div");
    for (let i = 0; i < cartas.length; i++) {
        cartas[i].addEventListener("click",comparar);
    }
}

function comparar(event) {
    event.target.className = "visible";
    let valorCarta = event.target.querySelector("p").innerHTML;
    if (valorCartaAnterior == null) {
        valorCartaAnterior = valorCarta;
        cartaAnterior = event.target;
    } else if (valorCartaAnterior == valorCarta) {
        
        cartaAnterior = null;
        valorCartaAnterior = null;
    } else {
        vidas--;
        event.target.className = "invisible"
    }
}