-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema proyprogramacion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyprogramacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyprogramacion` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `proyprogramacion` ;

-- -----------------------------------------------------
-- Table `proyprogramacion`.`USUARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyprogramacion`.`USUARIO` (
  `cod_usuario` INT NOT NULL AUTO_INCREMENT,
  `nomapeu` NVARCHAR(250) NOT NULL,
  `codigou` VARCHAR(15) NOT NULL,
  `claveu` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`cod_usuario`),
  UNIQUE INDEX `codigou_UNIQUE` (`codigou` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyprogramacion`.`ARTICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyprogramacion`.`ARTICULO` (
  `cod_articulo` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NULL,
  `marca` NVARCHAR(250) NOT NULL,
  `nom_articulo` NVARCHAR(250) NOT NULL,
  PRIMARY KEY (`cod_articulo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyprogramacion`.`PROVEEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyprogramacion`.`PROVEEDOR` (
  `cod_proveedor` INT NOT NULL AUTO_INCREMENT,
  `razon_social` NVARCHAR(250) NOT NULL,
  `ruc` VARCHAR(11) NOT NULL,
  `direccion` NVARCHAR(250) NOT NULL,
  PRIMARY KEY (`cod_proveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyprogramacion`.`ART_PROV`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyprogramacion`.`ART_PROV` (
  `ARTICULO_cod_articulo` INT NOT NULL,
  `PROVEEDOR_cod_proveedor` INT NOT NULL,
  `Fecha` DATETIME NOT NULL,
  `cantidad` DECIMAL(10,2) NOT NULL,
  INDEX `fk_ARTICULO_has_PROVEEDOR_PROVEEDOR1_idx` (`PROVEEDOR_cod_proveedor` ASC) VISIBLE,
  INDEX `fk_ARTICULO_has_PROVEEDOR_ARTICULO_idx` (`ARTICULO_cod_articulo` ASC) VISIBLE,
  CONSTRAINT `fk_ARTICULO_has_PROVEEDOR_ARTICULO`
    FOREIGN KEY (`ARTICULO_cod_articulo`)
    REFERENCES `proyprogramacion`.`ARTICULO` (`cod_articulo`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ARTICULO_has_PROVEEDOR_PROVEEDOR1`
    FOREIGN KEY (`PROVEEDOR_cod_proveedor`)
    REFERENCES `proyprogramacion`.`PROVEEDOR` (`cod_proveedor`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
