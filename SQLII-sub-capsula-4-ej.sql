-- modelo: https://lh3.googleusercontent.com/H0OrPiaFu3RKjSoIhFUPJPbTdFGG4gu4S24qHmTSjaRV04QpYZbICRQ-Y6i-DnNCH6pxt0gqLYTbISTuIpAPmM73XXlOS228hhbpmg5DrrvbjD9UiW6hhwujnV8PGoSYq6ZCxSM

--1 Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT count(*) as cantidad 
from PROFESOR 
WHERE id in 
  (select PROFESOR_id 
   from CURSO 
   where CURSO.turno = 'Noche' 
   GROUP by PROFESOR_id 
   HAVING count(*) > 1)

--2 Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT * 
from ESTUDIANTE 
where legajo not in 
  (select ESTUDIANTE_legajo 
   from INSCRIPCION 
   where CURSO_codigo = 105)
