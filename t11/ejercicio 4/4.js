const DOM = {
    canvas: document.getElementById("canvas")
}

draw();

function draw() {
    let ctx = DOM.canvas.getContext('2d');

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
}