function multiplicar() {
    var numero = parseInt(document.getElementById("numero").value)
    document.querySelector("span").innerHTML = numero
    document.querySelector("table").classList.add('visible')
    for (var i = 1; i <= 10; i++) {
        var elementoTr = document.createElement("tr");
        var elementoTd1 = document.createElement("td");
        var elementoTd2 = document.createElement("td");
        var texto1 = document.createTextNode(i + "*" + numero);
        var texto2 = document.createTextNode(i*numero);
        elementoTd1.appendChild(texto1);
        elementoTd2.appendChild(texto2);
        elementoTr.appendChild(elementoTd1);
        elementoTr.appendChild(elementoTd2)
        document.querySelector("table").appendChild(elementoTr);
    }
}