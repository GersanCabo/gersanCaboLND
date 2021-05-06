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
				for $alumno in //alumno
				let $nombre := $alumno/nombre
				let $apellidos := $alumno/apellidos
                let $curso := $alumno/ancestor::curso/@nombre
                let $media := avg($alumno//nota)

                where $curso = "1º ASIR"
				return <tr><td>{$nombre}</td><td>{$apellidos} </td><td>{$media}</td></tr>
			}
        </table>






	</body>
</html>
