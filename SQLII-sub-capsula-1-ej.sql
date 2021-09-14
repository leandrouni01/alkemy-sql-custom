--1 Teniendo en cuenta siguiente modelo: https://lh3.googleusercontent.com/H0OrPiaFu3RKjSoIhFUPJPbTdFGG4gu4S24qHmTSjaRV04QpYZbICRQ-Y6i-DnNCH6pxt0gqLYTbISTuIpAPmM73XXlOS228hhbpmg5DrrvbjD9UiW6hhwujnV8PGoSYq6ZCxSM
SELECT COUNT(*) from ESTUDIANTE 
inner JOIN INSCRIPCION ON (legajo = ESTUDIANTE_legajo) 
INNER JOIN CURSO on (CURSO_codigo = codigo)
where ESTUDIANTE.carrera = "Mecanica";

--2
SELECT MIN(salario) FROM PROFESOR WHERE fecha_nacimiento BETWEEN '1980/1/01' AND '1989/12/31';

--3
--4
  --Cantidad de pasajeros por país
    SELECT count(*), PAIS.nombre FROM PASAJERO INNER JOIN PAIS on (PASAJERO.idpais = PAIS.idpais) GROUP BY PASAJERO.idpais;
  --Suma de todos los pagos realizados
    SELECT sum(monto) FROM PAGO;
  --Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
    SELECT ROUND(sum(monto),2) FROM PAGO GROUP by idpasajero;
  --Promedio de los pagos que realizó un pasajero.
    SELECT AVG(monto) FROM PAGO GROUP by idpasajero