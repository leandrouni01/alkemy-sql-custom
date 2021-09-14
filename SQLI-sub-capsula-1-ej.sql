--1
CREATE TABLE CURSO (
    codigo INT NOt NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(250),
    turno VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
)
--2
alter table CURSO add cupo int;
--3
INSERT into CURSO VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35)
(102, 'Matemática Discreta','','Tarde',30);
--4
insert INTO CURSO VALUES (100, NULL, 'al', 'Mañana', 20);
--5
insert INTO CURSO VALUES (101, 'alg', 'al', 'Mañana', 20);
--6
UPDATE CURSO set cupo = 25;
--7
DELETE FROM CURSO WHERE nombre = 'Algoritmos';