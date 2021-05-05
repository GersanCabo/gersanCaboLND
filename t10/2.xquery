xquery version "1.0";
    declare copy-namespaces no-preserve, no-inherit;
    
    <alumnos>
    {
        for $alumno in /instituto/curso/alumno
        let $materias := count($alumno//asignatura)
        where $materias < 4
        return $alumno
    }
    </alumnos>
