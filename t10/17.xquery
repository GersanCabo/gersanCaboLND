xquery version "1.0";

declare base-uri "file:///home/gersancabo/Escritorio/repositoriosGit/gersanCaboLND/t10/";

<html>
	<head>
		<title>practica 17</title>
	</head>
	<body>
	    <h1>Faltas injustificadas:</h1>
        <table>
        <tr>
            <td>Alumno</td>
            <td>Hora</td>
            <td>Fecha</td>
        </tr>
        {
            for $falta in doc("faltas.xml")//falta
            let $cial := $falta/ancestor::alumno/@cial
            let $nombre := doc("alumnos.xml")//alumno[@cial = $cial]/nombre
            let $fecha := string($falta/@fecha)
            let $hora := string($falta/@hora)
            let $tipo := string($falta/@tipo)
            where $tipo = "I"
            return
                <tr>
                    <td>{$nombre}</td>
                    <td>{$hora}</td>
                    <td>{$fecha}</td>
                </tr>
        }
        </table>
    </body>
</html>
