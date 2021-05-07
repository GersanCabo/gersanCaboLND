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
				<td>Apellido</td>
			</tr>
			{
				for $alumno in //alumno
				let $nombre := $alumno/nombre
				let $apellidos := $alumno/apellidos
                where every $nota in $alumno//nota
                satisfies (number($nota) >= 5 or $nota = "APTO")

                return <tr><td>{$nombre}</td><td>{$apellidos}</td></tr>
			}

        </table>

	</body>
</html>
