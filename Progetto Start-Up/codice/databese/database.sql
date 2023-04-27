DROP DATABASE IF EXISTS car_pooling;
CREATE DATABASE car_pooling;

CREATE TABLE `car_pooling`.`Autista` (
  `id_Autista` INT NOT NULL AUTO_INCREMENT,
  `nominativo` VARCHAR(45) NULL,
  `patente` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `foto` VARCHAR(100) NULL,
  PRIMARY KEY (`id_Autista`));

CREATE TABLE `car_pooling`.`Viaggio` (
  `id_viaggio` INT NOT NULL AUTO_INCREMENT,
  `partenza` VARCHAR(45) NULL,
  `destinazione` VARCHAR(45) NULL,
  `data` DATETIME(30) NULL,
  `tempoArrivo` TIME NULL,
  `n_posti` INT NULL,
  `targa` VARCHAR(45) NULL,
  `costo` DOUBLE NULL,
  `id_soste` INT NULL,
  `bagaglio` VARCHAR(45) NULL,
  `id_animale` INT NULL,
  PRIMARY KEY (`id_viaggio`));

CREATE TABLE `car_pooling`.`Passeggero` (
  `id_Passeggero` INT NOT NULL AUTO_INCREMENT,
  `nominativo` VARCHAR(45) NULL,
  `documento` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Passeggero`));

CREATE TABLE `car_pooling`.`Prenotazione` (
  `id_prenotazione` INT NOT NULL AUTO_INCREMENT,
  `id_Passeggero` INT NOT NULL,
  `id_viaggio` VARCHAR(45) NOT NULL,
  `id_feedback` VARCHAR(45) NOT NULL,
  `esito` INT NULL,
  `partenza` VARCHAR(45) NULL,
  `destinazione` VARCHAR(45) NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`id_prenotazione`));

CREATE TABLE `car_pooling`.`Feedback` (
  `id_Feedback` INT NOT NULL AUTO_INCREMENT,
  `id_prenotazione` INT NOT NULL,
  `voto` INT NULL,
  `commento` VARCHAR(45) NULL,
  `tipologia` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Feedback`));

CREATE TABLE `car_pooling`.`Macchina`(
  `targa` VARCHAR(45) NULL NOT NULL,
  `modello`  VARCHAR(45) NULL,
  `n_posti` INT NULL,
  `casaprodutrice` VARCHAR(45) NULL,
  `bagagliaio` VARCHAR(45) NULL,
  `porte` INT NULL,
  PRIMARY KEY (`targa`));
  
  CREATE TABLE `car_pooling`.`Animele`(
  `id_animale` VARCHAR(45) NULL NOT NULL,
  `spece`  VARCHAR(45) NULL,
  `taglia` CHAR NULL,
  PRIMARY KEY (`id_animale`));

ALTER TABLE `katalog` 
ADD FOREIGN KEY (`Sprache` ) REFERENCES `sprache` (`ID` )