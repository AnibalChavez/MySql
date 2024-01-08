

use pieza_provedor;
create table PIEZAS(
Codigo INT not null ,
Nombre varchar(100),
PRIMARY KEY (Codigo)
);
create table PROVEDOR(
ID char(4) not null ,
Nombre varchar(100),
PRIMARY KEY (ID)
);
create table SUMINISTRA(
CodigoPieza int not null,
IdProvedor char(4) not null,
Precio int,
FOREIGN KEY (Idprovedor)REFERENCES PROVEDOR(ID),
FOREIGN KEY (CodigoPieza)REFERENCES PIEZAS(Codigo)

);

INSERT INTO PIEZAS VALUES (1,"paragolpe"),
(2,"púerta"),(3,"ventana"),(4,"luces"),
(5,"radeador"),(6,"filtro"),(7,"ruedas"),
(8,"capot"),(9,"porton"),(10,"volante");
 INSERT INTO PROVEDOR VALUES (1,"juan"),
(2,"luiyi"),(3,"marquito"),(4,"jose"),
(5,"gutu"),(6,"balqui"),(7,"jorge"),
(8,"wachin"),(9,"chambi"),(10,"facu");
 INSERT INTO SUMINISTRA VALUES(1,3,154),(2,3,121)
 ,(3,4,185),(4,8,124),(5,6,140),(6,8,146),(7,9,199)
 ,(8,7,141),(9,4,153),(10,5,189),(1,5,200),(2,5,179);
 
select nombre from PIEZAS;
select * FROM PROVEDOR;
select CodigoPieza, AVG(Precio) from SUMINISTRA
group by CodigoPieza ;
SELECT Nombre from PROVEDOR AS A INNER JOIN SUMINISTRA AS B ON A.ID = B.IdProvedor where CodigoPieza =1; 
select nombre from PIEZAS AS A INNER JOIN SUMINISTRA AS B ON A.Codigo = B.CodigoPieza  where IdProvedor =3 ;