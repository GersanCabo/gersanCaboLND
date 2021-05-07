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
				<td>Fecha</td>
				<td>Numero de comentarios</td>
			</tr>
			{
              		  for $fecha in distinct-values(//comentario/@fecha)
				let $comentarios := count(//comentario[@fecha = $fecha])

				return <tr><td>{$fecha}</td><td>{$comentarios}</td></tr>
			}

        </table>

	</body>
</html>
