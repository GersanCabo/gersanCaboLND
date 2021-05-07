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
				<td>Curso</td>
			</tr>
			{
                for $alumno in //alumno
                let $cial := $alumno/@cial
                let $comentarios := count($alumno/comentario)
                let $fechacomentarios := count(distinct-values($alumno/comentario/@fecha))

                return <tr><td>{$cial}</td><td>{$fechacomentarios}</td><td>{$comentarios}</td></tr>
			}

        </table>

	</body>
</html>
