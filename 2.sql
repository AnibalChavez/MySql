
use movie;

create table fabricante (
nombre varchar (100),
codigo int not null,
primary key (codigo));


create table articulo (
nombre varchar (100),
codigo int not null,
precio int,
fabricante int not null,
foreign key articulo(fabricante) references fabricante(codigo), 
primary key (codigo));

insert into fabricante values 
('Pepito',1),
('Carlos',2),
('Pito',3),
('kk',4);

insert into articulo values 
('Mascara de nisman',60,200,1),
('Lentejas',200,100,2),
('Dildo',300,10000000,3);
Select * from articulo;
select * from fabricante;
create view cinco as select count(fabricante) from articulo ;
Select nombre from articulo;
Select nombre,precio from articulo;
Select precio from articulo where precio>60 and precio<120;
Select fabricante.nombre ,articulo.nombre from fabricante inner join articulo on fabricante.codigo=articulo.fabricante;
Select fabricante.nombre ,count(articulo.codigo) from fabricante inner join articulo on fabricante.codigo=articulo.fabricante;
select count(codigo)from articulo as a inner join fabricante as b on(a.fabricante =b.codigo);
select b.nombre,count(codigoa) from articulo as a inner join fabricante as b on(a.codigo=b.codigo) group by(codigoa);