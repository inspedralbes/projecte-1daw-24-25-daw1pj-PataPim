SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS INCIDENCIES
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;



-- Donem permisos a l'usuari 'usuari' per accedir a la base de dades 'persones'
-- sinó, aquest usuari no podrà veure la base de dades i no podrà accedir a les taules
GRANT ALL PRIVILEGES ON INCIDENCIES.* TO 'usuari'@'%';
FLUSH PRIVILEGES;

USE INCIDENCIES;


CREATE TABLE DEPARTAMENT (
    id_departament INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL);

CREATE TABLE USUARI (
    id_usuari INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(150),
    departament_id INT,
    FOREIGN KEY (departament_id) REFERENCES DEPARTAMENT(id_departament));

INSERT INTO DEPARTAMENT (nom) VALUES ('Professorat');
INSERT INTO DEPARTAMENT (nom) VALUES ('Alumnat');
INSERT INTO DEPARTAMENT (nom) VALUES ('Secretaria');
