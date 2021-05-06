xquery version "1.0";

<html>
	<head>
		<title>practica 14</title>
	</head>
	<body>
		
        <h3>Alumnos</h3>
        <table>
			<tr>
				<td>Alumno</td>
				<td>Nació en:</td>
			</tr>
			{
				for $alumno in //alumno 
				let $nombre := $alumno/nombre
				let $cial := $alumno/@cial
                let $subyear := substring($cial,2,3)
                let $year := concat("19",$subyear)
                
				return <tr><td>{$nombre}</td><td>{$year} </td></tr>
			}

        </table>






	</body>
</html>
