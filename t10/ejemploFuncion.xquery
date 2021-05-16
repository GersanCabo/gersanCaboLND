xquery version "1.0";

declare base-uri "file:///home/carlos/Dropbox/clases/LND/xquery/";

declare function local:factorial($x as xs:integer) 
as xs:integer
{
	let $resultado :=
		if($x = 0) then (
			1
		)else(
			$x * local:factorial($x - 1)
		)
	return $resultado
			
};









<html>
	<head>
		<title>Ejemplo función</title>
	</head>
	<body>
		<h2>Ejemplo de función</h2>
		<p>  utilizamos: declare function
		y especificamos que es una función local. 
		directamente lo que se escribe es el return de la función
		</p>
		<p>
			En este ejemplo se muestran  por cada calificación el factorial. De esa forma podemos observar también que soporta recursividad
		</p>
		
		{
			for $alumno in //alumno 
			return 	
				for $b in $alumno//nota
					return
						<factNota>{$b} {":"} {local:factorial($b)}</factNota>
								
			

		}
			
	</body>
</html>







	
