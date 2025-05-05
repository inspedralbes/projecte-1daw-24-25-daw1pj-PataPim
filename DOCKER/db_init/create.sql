-- Aquest script NOMÉS s'executa la primera vegada que es crea el contenidor.
-- Si es vol recrear les taules de nou cal esborrar el contenidor, o bé les dades del contenidor
-- és a dir, 
-- esborrar el contingut de la carpeta db_data 
-- o canviant el nom de la carpeta, però atenció a no pujar-la a git


-- És un exemple d'script per crear una base de dades i una taula
-- i afegir-hi dades inicials

-- Si creem la BBDD aquí podem control·lar la codificació i el collation
-- en canvi en el docker-compose no podem especificar el collation ni la codificació

-- Per assegurar-nes de que la codificació dels caràcters d'aquest script és la correcta
SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS a24alvsalalv_daw;

  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- Donem permisos a l'usuari 'usuari' per accedir a la base de dades 'persones'
-- sinó, aquest usuari no podrà veure la base de dades i no podrà accedir a les taules

CREATE USER IF NOT EXISTS 'a24alvsalalv_daw'@'%' IDENTIFIED BY 'Pryct@Fin@l9923';
GRANT ALL PRIVILEGES ON a24alvsalalv_daw.* TO 'a24alvsalalv_daw'@'%';
FLUSH PRIVILEGES;

-- Després de crear la base de dades, cal seleccionar-la per treballar-hi
USE a24alvsalalv_daw;


CREATE TABLE DEPARTAMENT (
    id_departament INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE USUARI (
    id_usuari INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(150),
    departament_id INT,
    FOREIGN KEY (departament_id) REFERENCES departament(id_departament)
);

-- Afegim algunes dades inicials a la taula cases
INSERT INTO DEPARTAMENT (nom) VALUES ('Professorat');
INSERT INTO DEPARTAMENT (nom) VALUES ('Alumnat');
INSERT INTO DEPARTAMENT (nom) VALUES ('Secretaria');