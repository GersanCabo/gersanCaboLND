xquery version "1.0";

declare base-uri "file:///home/gersancabo/Escritorio/repositoriosGit/gersanCaboLND/t10/";

<html>
	<head>
		<title>practica 14</title>
        <link rel='stylesheet' type='text/css' href='./adicional.css'/>
	</head>
	<body>
	<h1>Informe Alumnos, faltas, comentarios</h1>
    {
        for $alumno in doc("alumnos.xml")//alumno
        let $nombre := $alumno/nombre
        let $apellidos := $alumno/apellidos
        let $nombrecompleto := concat($nombre," ",$apellidos)
        let $cial := string($alumno/@cial)
        let $curso := string($alumno/../@nombre)

        return (
            <h3><li>{$nombrecompleto}</li></h3>,
            <table>
                <tr>
                    <th>Cial</th>
                    <th>Curso</th>
                </tr>
                <tr>
                    <td>{$cial}</td>
                    <td>{$curso}</td>
                </tr>
                <tr>
                    <th>Asignatura</th>
                    <th>Nota</th>
                </tr>
                {
                    for $asignatura in $alumno//asignatura
                    let $nota := $asignatura/following-sibling::nota[1]
                    return 
                        <tr>
                            <td>{$asignatura}</td>
                            <td>{$nota}</td>
                        </tr>
                }
                <tr>
                    <th>F. Justificadas</th>
                    <th>F. Injustificadas</th>
                </tr>
                <tr>
                    <td>
                        {
                            let $faltasJustificadas := count(doc("faltas.xml")//alumno[@cial = $cial]/falta[@tipo = "J"])
                            return $faltasJustificadas
                        }
                    </td>
                    <td>
                        {
                            let $faltasInjustificadas := count(doc("faltas.xml")//alumno[@cial = $cial]/falta[@tipo = "I"])
                            return $faltasInjustificadas
                        }
                    </td>
                </tr>
                <tr>
                    <th>Fecha</th>
                    <th>Comentarios</th>
                </tr>
                {
                    for $fecha in distinct-values(doc("comentarios.xml")//alumno[@cial = $alumno/@cial]/comentario/@fecha)
                    let $fechaString := string($fecha)
                    return 
                        <tr>
                            <td>{$fechaString}</td>
                            <td>
                                {
                                    for $comentario in doc("comentarios.xml")//alumno[@cial = $alumno/@cial]/comentario[@fecha = $fecha]
                                    return <p>{$comentario}</p>
                                }
                            </td>
                        </tr>
                }
	        </table>
	)
    }		
	</body>
</html>
