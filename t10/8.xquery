xquery version "1.0";
    declare copy-namespaces no-preserve, no-inherit;

<html>
	<head>
		<title>practica 14</title>
	</head>
	<body>
		
        <h3>Alumnos</h3>
        <table>
			<tr>
				<td>Alumno</td>
				<td>Nació en:</td>
			</tr>
			{
				for $falta in //falta
				let $alumno := $falta/ancestor::alumno
				let $cial := $alumno/@cial
                let $fechaFalta := $falta/@fecha
                let $hora := $falta/@hora
                let $mes := month-from-date($fechaFalta)
                let $subfecha := substring($cial,2,3)
                let $fechaNacimiento := number(concat(19,$subfecha))

                where $falta/@tipo = "I" and $mes = 4 and $fechaNacimiento = 1992
				return <tr><td>{$cial}</td><td>{$fechaFalta} </td><td>{$hora}</td></tr>
			}

        </table>






	</body>
</html>
