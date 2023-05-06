DROP DATABASE IF EXISTS car_pooling;
CREATE DATABASE car_pooling;

CREATE TABLE `car_pooling`.`Autista` (
  `id_Autista` INT NOT NULL AUTO_INCREMENT,
  `nominativo` VARCHAR(45) NULL,
  `patente` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `foto` VARCHAR(100) NULL,
  PRIMARY KEY (`id_Autista`)
  );

CREATE TABLE `car_pooling`.`Passeggero` (
  `id_Passeggero` INT NOT NULL AUTO_INCREMENT,
  `nominativo` VARCHAR(45) NULL,
  `documento` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Passeggero`));
  
  CREATE TABLE `car_pooling`.`Feedback` (
  `id_Feedback` INT NOT NULL AUTO_INCREMENT,
  `id_Passeggero` INT NOT NULL,
  `id_Autista` INT NOT NULL,
  `voto` INT NULL,
  `commento` VARCHAR(45) NULL,
  `tipologia` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Feedback`),
  FOREIGN KEY (id_Passeggero) REFERENCES Passeggero(id_Passeggero),
  FOREIGN KEY (id_Autista) REFERENCES Autista(id_Autista));
  
CREATE TABLE `car_pooling`.`Viaggio` (
  `id_Viaggio` INT NOT NULL AUTO_INCREMENT,
  `partenza` VARCHAR(45) NULL,
  `id_Autista` INT NULL,
  `destinazione` VARCHAR(45) NULL,
  `data` DATETIME(6) NULL,
  `tempoArrivo` TIME NULL,
  `n_posti` INT NULL,
  `targa` VARCHAR(45) NULL,
  `costo` DOUBLE NULL,
  `id_Soste` INT NULL,
  `bagaglio` VARCHAR(45) NULL,
  `id_animale` INT NULL,
  PRIMARY KEY (`id_viaggio`),
  FOREIGN KEY (`id_Autista`) REFERENCES Autista(id_Autista));

CREATE TABLE `car_pooling`.`Prenotazione` (
  `id_prenotazione` INT NOT NULL AUTO_INCREMENT,
  `id_Passeggero` INT NOT NULL,
  `id_Viaggio` INT NOT NULL,
  `esito` INT NULL,
  `partenza` VARCHAR(45) NULL,
  `destinazione` VARCHAR(45) NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`id_prenotazione`),
  FOREIGN KEY (`id_Viaggio`) REFERENCES Viaggio(id_Viaggio));

 CREATE TABLE `car_pooling`.`Citta`(
  `Cap` INT NOT NULL,
  `comune` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cap`));

 CREATE TABLE `car_pooling`.`Soste`(
  `id_Soste` INT NOT NULL,
  `Cap` INT NOT NULL,
  `id_Viaggio` INT NOT NULL,
  `n_sosta`  INT NULL,
  `orarioArrivo` time NULL,
  `tempo` time NULL,
  `luogo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Soste`),
  FOREIGN KEY (`id_Viaggio`) REFERENCES Viaggio(id_Viaggio),
  FOREIGN KEY (`Cap`) REFERENCES Citta(Cap)); 
  
CREATE TABLE `car_pooling`.`Macchina`(
  `targa` VARCHAR(45) NULL NOT NULL,
  `modello`  VARCHAR(45) NULL,
  `n_posti` INT NULL,
  `casaprodutrice` VARCHAR(45) NULL,
  `capienzaStiva` VARCHAR(45) NULL,
  `postoRiservato` INT NULL,
  PRIMARY KEY (`targa`));
  
  CREATE TABLE `car_pooling`.`Animale`(
  `id_animale` INT NULL NOT NULL,
  `proprietario`  INT NULL,
  `spece`  VARCHAR(45) NULL,
  `taglia` CHAR NULL,
  PRIMARY KEY (`id_animale`),
  FOREIGN KEY (`proprietario`) REFERENCES Passeggero(id_Passeggero));
  

  
 
  
ALTER TABLE car_pooling.Viaggio
ADD FOREIGN KEY (`id_Soste`) REFERENCES Soste(id_Soste);