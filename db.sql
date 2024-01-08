CREATE DATABASE `mydb` ;
USE `mydb` ;

CREATE TABLE `muebleria` (
  `idmuebleria` INT NOT NULL,
  PRIMARY KEY (`idmuebleria`))
;

CREATE TABLE IF NOT EXISTS `mydb`.`provedor` (
  `cuit` INT NOT NULL,
  `marca` VARCHAR(45) NULL,
  `tipodeproducto` VARCHAR(45) NULL,
  PRIMARY KEY (`cuit`));

CREATE TABLE IF NOT EXISTS `mydb`.`categoria` (
  `idcategoria` INT NOT NULL,
  PRIMARY KEY (`idcategoria`));

CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `dni` INT NOT NULL,
  `nombrec` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  PRIMARY KEY (`dni`));
 show tables;