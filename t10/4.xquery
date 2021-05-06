xquery version "1.0";

<html>
	<head>
		<title>practica 14</title>
	</head>
	<body>
		
        <h3>Hay {count(//alumno)} alumnos</h3>
        <table>
			<tr>
				<td>Alumno</td>
				<td>Materias aprobadas</td>
			</tr>
			{
				for $alumno in //alumno 
				let $nombre := $alumno/nombre
				let $aprobado := 5
				let $materiasAprobadas := count($alumno//nota[. >= $aprobado])
				return <tr><td>{$nombre}</td><td>{$materiasAprobadas} materias</td></tr>
			}

        </table>






	</body>
</html>
