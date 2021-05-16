xquery version "1.0";


declare base-uri "file:///home/carlos/Dropbox/clases/LND/xquery/";





<html>
	<head>
		<title>bucles anidados</title>
	</head>
	<body>
		<h2>Ejemplo bucles anidados: caso de expresiones xquery seguidas no necesita poner de nuevo llaves</h2>
		{
			for $alumno in //alumno 
			return 	
				for $asignatura in $alumno//asignatura
				return 
					<p> {$alumno/nombre/text() } {$asignatura/text()} </p>			


		}
		
	</body>
</html>







	
