-- modelo: https://lh3.googleusercontent.com/H0OrPiaFu3RKjSoIhFUPJPbTdFGG4gu4S24qHmTSjaRV04QpYZbICRQ-Y6i-DnNCH6pxt0gqLYTbISTuIpAPmM73XXlOS228hhbpmg5DrrvbjD9UiW6hhwujnV8PGoSYq6ZCxSM

--1
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY fecha_nacimiento ;
--2
SELECT * FROM PROFESOR WHERE salario >= 65000;
--3
SELECT * FROM PROFESOR WHERE fecha_nacimiento BETWEEN '1980/1/01' AND '1989/12/31';
--4
SELECT * FROM PROFESOR LIMIT 5;
--5
SELECT * FROM PROFESOR WHERE apellido LIKE 'P%';
--6
SELECT * FROM PROFESOR WHERE fecha_nacimiento BETWEEN '1980/1/01' AND '1989/12/31' AND salario > 80000;