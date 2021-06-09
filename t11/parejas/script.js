const DOM = {
    scn: document.getElementById("tabla_parejas") //tabla donde estaran las cartas
}

let numeroCartas = 9;

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
        let cartaImpar = numeros[ultimoElemento] + 1;
        numeros.push(cartaImpar);
    }
    aleatorioArray(numeros);
    //Bucle que inserta un div por cada elemento del array
    for (let i = 0; i < numeros.length; i++) {
        let cartaDiv = document.createElement("div");
    }
}

/**
 * Funcion que mezcla el array
 * 
 * @param {*} numeros lista a mezclar
 */
function aleatorioArray(numeros) {
    numeros.sort(() => Math.random - 0.5);
}