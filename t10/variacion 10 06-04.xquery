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
			</tr>
			{
				for $alumno in //alumno[.//asignatura[matches(.,"^.*s$")]]

				return <tr><td>{$alumno/nombre/text()}</td></tr>
			}

        </table>

	</body>
</html>
