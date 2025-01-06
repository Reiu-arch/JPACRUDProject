-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema potatodb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `potatodb` ;

-- -----------------------------------------------------
-- Schema potatodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `potatodb` DEFAULT CHARACTER SET utf8 ;
USE `potatodb` ;

-- -----------------------------------------------------
-- Table `potato_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `potato_type` ;

CREATE TABLE IF NOT EXISTS `potato_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `exterior_color` VARCHAR(45) NULL,
  `interior_color` VARCHAR(45) NULL,
  `best_uses` SET('boiling', 'steaming', 'mashing', 'frying', 'roasting', 'baking', 'deep frying', 'chipping', 'grilling', 'pan frying') NOT NULL,
  `description` VARCHAR(3000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS tatertot@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'tatertot'@'localhost' IDENTIFIED BY 'tatertot';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'tatertot'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `potato_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `potatodb`;
INSERT INTO `potato_type` (`id`, `name`, `exterior_color`, `interior_color`, `best_uses`, `description`) VALUES (1, 'Russet', 'brown', 'white', 'baking,mashing,deep frying', 'This large potato is most recognizable for its use in french fries.');
INSERT INTO `potato_type` (`id`, `name`, `exterior_color`, `interior_color`, `best_uses`, `description`) VALUES (2, 'Yukon Gold', 'golden', 'yellow', 'boiling,baking,mashing,deep frying,roasting', 'This golden buttery flavored potato is most used for mashing.');

COMMIT;

