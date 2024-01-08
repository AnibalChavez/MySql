drop database `mydb`;
create database `mydb`;
  USE `mydb` ;

 

  CREATE TABLE IF NOT EXISTS `mydb`.`muebleria` (
        `cuit` INT NOT NULL,
        `nombre` VARCHAR(45) NULL,
        PRIMARY KEY (`cuit`))
      ;


 
 

  CREATE TABLE IF NOT EXISTS `mydb`.`provedor` (
        `idprovedor` INT NOT NULL,
        `marca` VARCHAR(45) NULL,
        PRIMARY KEY (`idprovedor`))
      ;


 
 
  CREATE TABLE IF NOT EXISTS `mydb`.`muebleria*provedor` (
        `detalles` VARCHAR(45) NULL,
        `muebleria_cuit` INT NOT NULL,
        `provedor_idprovedor` INT NOT NULL,
        INDEX `fk_muebleria*provedor_muebleria_idx` (`muebleria_cuit` ASC),
        INDEX `fk_muebleria*provedor_provedor1_idx` (`provedor_idprovedor` ASC),
        CONSTRAINT `fk_muebleria*provedor_muebleria`
          FOREIGN KEY (`muebleria_cuit`)
          REFERENCES `mydb`.`muebleria` (`cuit`)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION,
        CONSTRAINT `fk_muebleria*provedor_provedor1`
          FOREIGN KEY (`provedor_idprovedor`)
          REFERENCES `mydb`.`provedor` (`idprovedor`)
          )
      ;


 
 

  CREATE TABLE IF NOT EXISTS `mydb`.`factura` (
        `idfactura` INT NOT NULL,
        `nrodefactura` INT NULL,
        `muebleria_cuit` INT NOT NULL,
        PRIMARY KEY (`idfactura`),
        INDEX `fk_factura_muebleria1_idx` (`muebleria_cuit` ASC),
        CONSTRAINT `fk_factura_muebleria1`
          FOREIGN KEY (`muebleria_cuit`)
          REFERENCES `mydb`.`muebleria` (`cuit`)
          )
      ;


 
 
  
  CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
        `dni` INT NOT NULL,
        `nombre` VARCHAR(45) NULL,
        `apellido` VARCHAR(45) NULL,
        `domicilio` VARCHAR(45) NULL,
        `telefono` VARCHAR(45) NULL,
        `clientecol` VARCHAR(45) NULL,
        `factura_idfactura` INT NOT NULL,
        PRIMARY KEY (`dni`, `factura_idfactura`),
        INDEX `fk_cliente_factura1_idx` (`factura_idfactura` ASC),
        CONSTRAINT `fk_cliente_factura1`
          FOREIGN KEY (`factura_idfactura`)
          REFERENCES `mydb`.`factura` (`idfactura`)
          )
      ;

 
 
 
  CREATE TABLE IF NOT EXISTS `mydb`.`producto` (
        `coddebarra` INT NOT NULL,
        `marca` VARCHAR(45) NULL,
        `stock` VARCHAR(45) NULL,
        `modelo` INT NULL,
        `muebleria_cuit` INT NOT NULL,
        `cliente_dni` INT NOT NULL,
        `cliente_factura_idfactura` INT NOT NULL,
        PRIMARY KEY (`coddebarra`),
        INDEX `fk_producto_muebleria1_idx` (`muebleria_cuit` ASC),
        INDEX `fk_producto_cliente1_idx` (`cliente_dni` ASC, `cliente_factura_idfactura` ASC),
        CONSTRAINT `fk_producto_muebleria1`
          FOREIGN KEY (`muebleria_cuit`)
          REFERENCES `mydb`.`muebleria` (`cuit`)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION,
        CONSTRAINT `fk_producto_cliente1`
          FOREIGN KEY (`cliente_dni` , `cliente_factura_idfactura`)
        REFERENCES `mydb`.`cliente` (`dni` , `factura_idfactura`)
    )
    ;

 show tables
     ;
desc muebleria;
insert into muebleria values
     (2708,'musimundo');
 desc muebleria;

 select *from muebleria;


 
 desc provedor;

 insert into provedor  values
     (1,'samsung');

 insert into porvedor values
   (2,'iphone');

 select *from provedor;




 insert into provedor values
    (3,'noblex');

 insert into provedor values
    (43,'lg');
 ALTER TABLE producto ADD COLUMN nomproducto varchar(30);
desc producto;

desc provedor;

select *from provedor;

 show tables;


 ALTER TABLE table_name ADD COLUMN column_name varchar(30);
 select *from provedor;
 insert into provedor
    
     values
     (4,'lg');

 select *from provedor;


 insert into provedor values
    (4,'jvc');


insert into provedor values
     (5,'sony');

insert into provedor values
      (6,'yamaha');

  insert into provedor values
     (7,'');



