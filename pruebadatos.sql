INSERT INTO auto(patente, color, modelo, ano) VALUES ("hac695", "blanco", "suzuki fun", 2008);
INSERT INTO auto VALUES("lwe458", "blanco", "Renault Koleoss", 2012);
INSERT INTO auto VALUES("afs152", "negro", "peugeot 503", 2002);
INSERT INTO auto VALUES("jkp454", "gris", "mitsubitchi 1sad", 2017);

INSERT INTO persona(dni, nombre, fecha_nac, patente_auto) VALUES(41321336, "Gimenez Ezequiel", "1998/12/19", "hac695");
INSERT INTO persona VALUES(52121555, "Gimenez Marcelo Oscar", "1964/11/16", "lwe458");
INSERT INTO persona VALUES(42314256, "Hallberg Britta", "1969/7/8", "afs152");

select nombre
from persona
where patente_auto in
(select patente
from auto
where ano < 2012);

select auto.color, persona.nombre, persona.dni
from auto
inner join persona ON auto.patente = persona.patente_auto;