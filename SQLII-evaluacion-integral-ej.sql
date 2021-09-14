-- modelo: https://lh3.googleusercontent.com/H0OrPiaFu3RKjSoIhFUPJPbTdFGG4gu4S24qHmTSjaRV04QpYZbICRQ-Y6i-DnNCH6pxt0gqLYTbISTuIpAPmM73XXlOS228hhbpmg5DrrvbjD9UiW6hhwujnV8PGoSYq6ZCxSM

--1 Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
SELECT 
legajo, 
(
  SELECT count(*) 
  FROM INSCRIPCION 
  WHERE INSCRIPCION.ESTUDIANTE_legajo = legajo
) AS cantidad 
FROM ESTUDIANTE

--2 Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT 
legajo, 
(
  SELECT count(*) 
  FROM INSCRIPCION 
  WHERE INSCRIPCION.ESTUDIANTE_legajo = legajo
) AS cantidad 
FROM ESTUDIANTE WHERE cantidad > 1

--3 Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT * FROM ESTUDIANTE WHERE legajo NOT IN (SELECT ESTUDIANTE_legajo FROM INSCRIPCION)

--4 Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
/*
PROFESOR:
id, primary key, index clousterizado.
-----------
CURSO:
codigo, primary key, index clousterizado.
PROFESOR_id, foreign_key, index no clousterizado.
-----------
ESTUDIANTE: 
legajo, primary key, index clousterizado.
-----------
INSCRIPCION:
numero, primary key, index clousterizado.
CURSO_codigo, foreign_key, index no clousterizado.
ESTUDIANTE_legajo, foreign_key, index no clousterizado.
*/

--6 Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.
SELECT * 
FROM ESTUDIANTE 
WHERE legajo IN 
(
  SELECT ESTUDIANTE_legajo 
  FROM INSCRIPCION 
  INNER JOIN CURSO ON (INSCRIPCION.CURSO_codigo = CURSO.codigo) 
  INNER JOIN PROFESOR ON (CURSO.PROFESOR_id = PROFESOR.id)
  WHERE PROFESOR.apellido IN ('Pérez', 'Paz')
)