const DOM = {
    numero: document.getElementById("numero")
}

function multiplicar() {
    document.querySelector("span").innerHTML = numero.value
    document.querySelector("table").classList.add('visible')
    var nodeTr = document.createElement("tr")
    var nodeTd = document.createElement("td")
    for (var i = 1; i < 10; i++) {
        var operacion = document.createTextNode(numero.value + "" + i)
        var resultado = document.createTextNode(numero.value * i)
        nodeTd.appendCh
    }
}