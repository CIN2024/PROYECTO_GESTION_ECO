-- MySQL Script generated by MySQL Workbench
-- Sun Oct  6 23:22:16 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema generacion_puntos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema generacion_puntos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `generacion_puntos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `generacion_puntos` ;

-- -----------------------------------------------------
-- Table `generacion_puntos`.`niños`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `generacion_puntos`.`niños` ;

CREATE TABLE IF NOT EXISTS `generacion_puntos`.`niños` (
  `id_niño` INT NOT NULL AUTO_INCREMENT,
  `nombre_niño` VARCHAR(100) NOT NULL,
  `puntos` INT NULL DEFAULT '0',
  PRIMARY KEY (`id_niño`))
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `generacion_puntos`.`clasificaciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `generacion_puntos`.`clasificaciones` ;

CREATE TABLE IF NOT EXISTS `generacion_puntos`.`clasificaciones` (
  `id_clasificacion` INT NOT NULL AUTO_INCREMENT,
  `id_niño` INT NULL DEFAULT NULL,
  `tipo_residuo` VARCHAR(50) NULL DEFAULT NULL,
  `fecha_clasificacion` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_clasificacion`),
  CONSTRAINT `clasificaciones_ibfk_1`
    FOREIGN KEY (`id_niño`)
    REFERENCES `generacion_puntos`.`niños` (`id_niño`))
ENGINE = InnoDB
AUTO_INCREMENT = 93
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `id_niño` ON `generacion_puntos`.`clasificaciones` (`id_niño` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
