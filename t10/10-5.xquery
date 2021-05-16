xquery version "1.0";


declare base-uri "file:///home/carlos/Dropbox/clases/LND/xquery/";





<html>
	<head>
		<title>bucles</title>
	</head>
	<body>
		<h2>Ejemplo bucles: caso de primera fila distinta ( por ej. una cabecera)</h2>
		<h3>garantizamos que se interprete correctamente las líneas afectadas por el return
		mediante paréntesis </h3>

		<p>
			Observar que en el return usamos paréntesis y separamos los elementos
			mediante comas: ","
			Esto es: 
			return (  blabla1, blabla2 )
		</p>
		
		<ul>
		{
			for $alumno in (comentarios.xml) //alumno 
			let $cial := $alumno/@cial
			return (
				<table border="1">
				<caption>cial del alumno:{$cial}</caption>
				<tr>
					<th>Fecha</th>
					<th>Comentario</th>
				</tr>
				{
					for $fecha in $alumno//comentario/@fecha
					return (
						<tr> 
							<td> {$fecha} </td>
						</tr>
						<tr>
							<td> {$textoComentario} </td>
						</tr>
					)
				}
				</table>

				
			)


		}
		</ul>		
	</body>
</html>







	
