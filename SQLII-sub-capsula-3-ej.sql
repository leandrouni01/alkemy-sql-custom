--Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE persona(
  id int,
  nombre varchar(45)
)

--Inserte datos siguiendo un orden no secuencial para el id.
insert into persona values 
(5, 'pepe'),
(6, 'pepa'),
(1, 'pepo'),
(8, 'pepi'),
(3, 'pepu'),
(9, 'pepx'),
(4, 'pepp')

--Consulte los datos para visualizar el orden de registros.
SELECT * from persona

--Agregue una clave primaria para el campo id.
alter TABLE persona ADD CONSTRAINT pd_id PRIMARY key(id)

--Consulte los datos para visualizar el orden de registros.
SELECT * from persona

--Conteste a la pregunta: ¿Por qué después de agregar la clave primaria, el orden de los registros es diferente?
/*Porque al crear la primary key que es un indice clusterizado se cambio
 el orden fisico en el que se almacenan lo campos de la tabla*/