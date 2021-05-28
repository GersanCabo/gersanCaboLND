const DOM = {
    canvas: document.getElementById("canvas"),
    btn: document.querySelector("button")
}

DOM.btn.addEventListener("click",draw);

let contador = 0;

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
    /*
    //Linea negra y ancho 6
    ctx.beginPath();
    ctx.strokeStyle = "black";
    ctx.lineWidth = 6;
    ctx.moveTo(75, 200);
    ctx.lineTo(125, 200);
    ctx.moveTo(100, 200);
    ctx.lineTo(100, 100);
    ctx.lineTo(150, 100);
    ctx.stroke();

    //Linea negra y ancho 4
    ctx.beginPath();
    ctx.lineWidth = 4;
    ctx.moveTo(100, 120);
    ctx.lineTo(120, 100);
    ctx.stroke();

    //Linea roja y ancho 4
    ctx.beginPath();
    ctx.strokeStyle = "red";
    ctx.moveTo(147.5,103);
    ctx.lineTo(147.5,124);
    ctx.stroke();

    ctx.beginPath();
    ctx.strokeStyle = "blue";
    ctx.moveTo(147.5,136);
    ctx.lineTo(147.5,165);
    //Pierna izquierda
    ctx.lineTo(137.5, 180)
    //Pierna derecha
    ctx.moveTo(147.5,165);
    ctx.lineTo(157.5,180);
    //Brazo izquierdo
    ctx.moveTo(147.5,140);
    ctx.lineTo(137.5, 155);
    //Brazo derecho
    ctx.moveTo(147.5,140);
    ctx.lineTo(157.5,155);
    //Cabeza
    ctx.moveTo(157.5,130);
    ctx.arc(147.5,130,8,0,2*Math.PI,false);
    ctx.stroke();
    */
}