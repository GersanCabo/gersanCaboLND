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
				<td>Cial</td>
				<td>Fecha</td>
				<td>Hora de clase</td>
			</tr>
			{
				for $asignatura in //asignatura
				let $nombre := $asignatura/ancestor::alumno/nombre
				let $apellidos := $asignatura/ancestor::alumno/apellidos
                where ends-with($asignatura,"s")
				return <tr><td>{$nombre}</td><td>{$apellidos} </td><td>{$asignatura}</td></tr>
			}

        </table>

	</body>
</html>
