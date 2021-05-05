xquery version "1.0";
    declare copy-namespaces no-preserve, no-inherit;

<html>
	<head>
		<title>practica 14</title>
	</head>
	<body>
		
        <h3>Hay {count(//alumno)} alumnos</h3>
        <ol type="1">

			{
				for $alumno in //alumno 
				let $cial := $alumno/@cial
				let $nombre := string($alumno/nombre)
				let $curso := string($alumno/../curso/@nombre)
				return <li id='{$cial}'>{$nombre} del curso {$curso}</li>
			}

        </ol>
    </body>
</html>
