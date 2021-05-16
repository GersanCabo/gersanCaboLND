xquery version "1.0";


declare base-uri "file:///home/carlos/Dropbox/clases/LND/xquery/";





<html>
	<head>
		<title>Condicionales if</title>
	</head>
	<body>
		<h2>Ejemplo de IF THEN: como elemento inmediato en un return</h2>
		<p> Agruparemos mediante paréntesis y de nuevo es obligatorio poner else aunque sea vacío
		</p>
		<p>
			En este ejemplo se muestran únicamente los alumnos que aprueban.
			Observar que adrede se han puesto dos párrafos en lo que devuelve el 
			if Así podemos observar la obligatoriedad de poner comas: "," como 
			separador cuando se devuelven varios elementos en el if
		</p>
		<ul>
		{
			for $alumno in doc("alumnos.xml")//alumno 
			let $nombre := string($alumno/nombre)
			let $media := avg($alumno//nota)

			return 
				if($media >= 5) then (
					<p>Nombre alumno: {$nombre}</p>,
					<p>Obtiene califiación media de: {$media}</p>
				)
				else (

				)
								


		}
		</ul>		
	</body>
</html>







	
