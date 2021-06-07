const DOM = {
    canvas: document.getElementById("canvas"),
    btn: document.querySelector("button"),
    npt: document.querySelector("input"),
    plb: document.querySelector("#plb"), //div de la palabra escondida (los guiones)
    hst: document.querySelector("#hst") //div del historial de palabras usadas por el usuario
}

DOM.btn.addEventListener("click",comprobarLetraUsuario);

const listaPalabras = ['violeta','margarita','rosa','petunia','laurel','girasol','naranja','manzana','pera','platano'];
const palabraMostrar = [];
let historial = [];
let intentos = 10;
let contador = 0; //Contador para dibujar el ahorcado
let palabraRandom = listaPalabras[Math.floor(Math.random() * listaPalabras.length)]; //Varibale qeu escoge una palabra random del array
let palabraAdivinar = palabraRandom.split('');//Separa la palabra en letras y lo guarda
let juegoAcabado = false;

/*
Aqui, por cada letra de la lista, pone una barra en el array de palabras a mostrar
*/
for (let letra of palabraAdivinar) {
    palabraMostrar.push('_');
}

actualizarPantalla();

/**
 * Funcion que actualiza la pantalla al comienzo y cada vez que comprobamos una letra
 */
function actualizarPantalla() {
    DOM.plb.textContent = palabraMostrar.join(' ');
    DOM.hst.textContent = historial.join(' ');
}

/**
 * Funcion que nos permite comprobar si el usuario ha acertado con una letra o no
 */
function comprobarLetraUsuario() {
    if (juegoAcabado == false) {
        let letra = DOM.npt.value;
        DOM.npt.value = '';
        DOM.npt.focus();
        for (const [i, letraAdivinar] of palabraAdivinar.entries()) {
            if (letra == letraAdivinar) {
                palabraMostrar[i] = letra;
            }
        }
        if (!palabraAdivinar.includes(letra) && !historial.includes(letra)) {
            draw();
            historial.push(letra);
        }
        acabar();
        actualizarPantalla();
    }
}

/**
 * Funcion que decide si hemos acabado el juego
 */
function acabar() {
    if (!palabraMostrar.includes('_')) {
        alert("VICTORIA!!!");
        juegoAcabado = true;
    }
    if (contador == 11) {
        alert("GAME OVER La palabra era :" + palabraRandom);
        juegoAcabado = true;
    }
}

/**
 * Funcion que se encarga de ir dibujando en el canvas
 */
function draw() {
    let ctx = DOM.canvas.getContext('2d');
    let canvasVar = DOM.canvas;
    contador++;
    switch (contador) {
        case 12:
            contador = 0;
            ctx.clearRect(0,0,DOM.canvas.width,DOM.canvas.height);
            break;
        case 11:
            //cabeza
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(157.5,130);
            ctx.arc(147.5,130,8,0,2*Math.PI,false);
            ctx.stroke();
        case 10:
            //Brazo derecho
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(147.5,140);
            ctx.lineTo(157.5,155);
            ctx.stroke();
        case 9:
            //Brazo izquierdo
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(147.5,140);
            ctx.lineTo(137.5, 155);
            ctx.stroke();
        case 8:
            //Pierna derecha
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(147.5,165);
            ctx.lineTo(157.5,180);
            ctx.stroke();
        case 7:
            //Pierna izquierda
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(147.5,165)
            ctx.lineTo(137.5, 180);
            ctx.stroke();
        case 6:
            //Cuerpo
            ctx.beginPath();
            ctx.lineWidth = 4;
            ctx.strokeStyle = "blue";
            ctx.moveTo(147.5,136);
            ctx.lineTo(147.5,165);
            ctx.stroke();
        case 5:
            //cuerda
            ctx.beginPath();
            ctx.strokeStyle = "red";
            ctx.lineWidth = 4;
            ctx.moveTo(147.5,103);
            ctx.lineTo(147.5,124);
            ctx.stroke();
        case 4:
            //Palo angulo
            ctx.beginPath();
            ctx.strokeStyle = "black";
            ctx.lineWidth = 4;
            ctx.moveTo(100, 120);
            ctx.lineTo(120, 100);
            ctx.stroke();
        case 3:
            //Palo de arriba
            ctx.beginPath();
            ctx.lineWidth = 6;
            ctx.moveTo(97,100);
            ctx.lineTo(150, 100);
            ctx.stroke();
        case 2:
            //Palo principal
            ctx.beginPath();
            ctx.moveTo(100, 200);
            ctx.lineTo(100, 100);
            ctx.stroke();
        case 1:
            //Palo de la base
            ctx.beginPath();
            ctx.lineWidth = 6;
            ctx.moveTo(75, 200);
            ctx.lineTo(125, 200);
            ctx.stroke();
    }
}