
const DOM = {
    primerNumero: document.getElementById("primerNumero"),
    segundoNumero: document.getElementById("segundoNumero"),
    operador: document.getElementById("operador")
}

function calcular() {
    operador = operador.value
    primerNumero = parseInt(primerNumero.value)
    segundoNumero = parseInt(segundoNumero.value)
    switch (operador) {
        case "+":
            document.getElementById("resultado").innerHTML = primerNumero + segundoNumero
            break
        case "-":
            document.getElementById("resultado").innerHTML = primerNumero - segundoNumero
            break
        case "*":
            document.getElementById("resultado").innerHTML = primerNumero * segundoNumero
            break
        case "/":
            document.getElementById("resultado").innerHTML = primerNumero / segundoNumero
            break
    }
}