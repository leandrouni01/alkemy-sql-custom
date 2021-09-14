-- modelo: https://lh3.googleusercontent.com/H0OrPiaFu3RKjSoIhFUPJPbTdFGG4gu4S24qHmTSjaRV04QpYZbICRQ-Y6i-DnNCH6pxt0gqLYTbISTuIpAPmM73XXlOS228hhbpmg5DrrvbjD9UiW6hhwujnV8PGoSYq6ZCxSM

--1 Nombre, apellido y cursos que realiza cada estudiante
SELECT 
ESTUDIANTE.nombre as nombre_estudiante, ESTUDIANTE.apellido, CURSO.nombre as nombre_curso 
from CURSO 
inner JOIN INSCRIPCION on (CURSO.codigo = INSCRIPCION.CURSO_codigo)
inner join ESTUDIANTE on(INSCRIPCION.ESTUDIANTE_legajo = ESTUDIANTE.legajo)

--2 Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT 
ESTUDIANTE.nombre as nombre_estudiante, ESTUDIANTE.apellido, CURSO.nombre as nombre_curso 
from CURSO 
inner JOIN INSCRIPCION on (CURSO.codigo = INSCRIPCION.CURSO_codigo)
inner join ESTUDIANTE on(INSCRIPCION.ESTUDIANTE_legajo = ESTUDIANTE.legajo)
ORDER by nombre_curso

--3 Nombre, apellido y cursos que dicta cada profesor
SELECT 
PROFESOR.nombre as nombre_profesor, PROFESOR.apellido, CURSO.nombre as nombre_curso 
from CURSO 
inner join PROFESOR on(CURSO.PROFESOR_id = PROFESOR.id)

--4 Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT 
PROFESOR.nombre as nombre_profesor, PROFESOR.apellido, CURSO.nombre as nombre_curso 
from CURSO 
inner join PROFESOR on(CURSO.PROFESOR_id = PROFESOR.id)
ORDER by nombre_curso

--5 Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT 
(cupo - (SELECT COUNT(*) from INSCRIPCION WHERE INSCRIPCION.CURSO_codigo = CURSO.codigo)) AS cupo_disponible 
from CURSO
--6 Cursos cuyo cupo disponible sea menor a 10
SELECT 
(cupo - (SELECT COUNT(*) from INSCRIPCION WHERE INSCRIPCION.CURSO_codigo = CURSO.codigo)) AS cupo_disponible 
from CURSO WHERE cupo_disponible < 10