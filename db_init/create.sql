SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS INCIDENCIES
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;



-- Donem permisos a l'usuari 'usuari' per accedir a la base de dades 'persones'
-- sinó, aquest usuari no podrà veure la base de dades i no podrà accedir a les taules
GRANT ALL PRIVILEGES ON INCIDENCIES.* TO 'usuari'@'%';
FLUSH PRIVILEGES;

USE INCIDENCIES;

-- Tablas importadas desde phpMyAdmin

-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 12-05-2025 a les 08:01:24
-- Versió del servidor: 10.11.10-MariaDB-ubu2204
-- Versió de PHP: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `a24alvsalalv_daw`
--
-- --------------------------------------------------------

--
-- Estructura de la taula `ACTUACIO`
--

CREATE TABLE `ACTUACIO` (
  `id_actuacio` int(11) NOT NULL,
  `descripcio` text NOT NULL,
  `data_creacio` datetime DEFAULT current_timestamp(),
  `visible_usuari` tinyint(1) DEFAULT 1,
  `tecnic_id` int(11) NOT NULL,
  `incidencia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `ACTUACIO`
--

INSERT INTO `ACTUACIO` (`id_actuacio`, `descripcio`, `data_creacio`, `visible_usuari`, `tecnic_id`, `incidencia_id`) VALUES
(49, 'aixo no ho pot veure\r\n', '2025-05-09 00:29:05', 0, 1, 33),
(50, 'aixo si que pot veure', '2025-05-09 00:29:14', 1, 1, 33);

-- --------------------------------------------------------

--
-- Estructura de la taula `DEPARTAMENT`
--

CREATE TABLE `DEPARTAMENT` (
  `id_departament` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `DEPARTAMENT`
--

INSERT INTO `DEPARTAMENT` (`id_departament`, `nom`) VALUES
(1, 'Professorat'),
(2, 'Alumnat'),
(3, 'Secretaria / Administració'),
(4, 'Informàtica / TIC'),
(5, 'Direcció / Coordinació'),
(6, 'Consergeria / Serveis generals'),
(7, 'Altres');

-- --------------------------------------------------------

--
-- Estructura de la taula `INCIDENCIA`
--

CREATE TABLE `INCIDENCIA` (
  `id_incidencia` int(11) NOT NULL,
  `descripcio` text DEFAULT NULL,
  `estat` enum('pendent','resolta','en procés') DEFAULT 'pendent',
  `prioritat` enum('Alta','Mitja','Baixa') DEFAULT NULL,
  `data_creacio` datetime DEFAULT current_timestamp(),
  `usuari_id` int(11) NOT NULL,
  `tipus_id` int(11) DEFAULT NULL,
  `tecnic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `INCIDENCIA`
--

INSERT INTO `INCIDENCIA` (`id_incidencia`, `descripcio`, `estat`, `prioritat`, `data_creacio`, `usuari_id`, `tipus_id`, `tecnic_id`) VALUES
(33, 'FAKE ALERTA VALEWarning: Undefined variable $stmt in /home/a24bryruzgon/web/a24bryruzgon.daw.inspedralbes.cat/public_html/projecte/eliminar_incidencia.php on line 32\r\n\r\nFatal error: Uncaught Error: Call to a member function close() on null in /home/a24bryruzgon/web/a24bryruzgon.daw.inspedralbes.cat/public_html/projecte/eliminar_incidencia.php:32 Stack trace: #0 {main} thrown in /home/a24bryruzgon/web/a24bryruzgon.daw.inspedralbes.cat/public_html/projecte/eliminar_incidencia.php on line 32', 'pendent', NULL, '2025-05-08 17:47:07', 15, 4, 1),
(34, 'sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA', 'pendent', NULL, '2025-05-09 00:11:49', 15, 11, NULL),
(35, 'sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA sdaihfbdvilfbdvsLUBASLOAAAAAA', 'pendent', NULL, '2025-05-09 00:14:23', 17, 16, NULL),
(36, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:27', 15, 14, NULL),
(37, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:29', 15, 14, NULL),
(39, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(40, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(41, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(42, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(43, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(44, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:30', 15, 14, NULL),
(45, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(46, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(47, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(48, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(49, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(50, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(51, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:31', 15, 14, NULL),
(52, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(53, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(54, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(55, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(56, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(57, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:32', 15, 14, NULL),
(58, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(59, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(60, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(61, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(62, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(63, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:33', 15, 14, NULL),
(64, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(65, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(66, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(67, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(68, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(69, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:34', 15, 14, NULL),
(70, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(71, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(72, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(73, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(74, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(75, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(76, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'pendent', NULL, '2025-05-09 16:24:35', 15, 14, NULL),
(77, 'Es finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.phpEs finalitza el documanter_incidencia.php i s&#039;edita el formulari inicial per afegir el conulta incidencia i es crea el fitxer consulta_incidenia.php', 'en procés', 'Baixa', '2025-05-09 16:24:36', 15, 14, NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `TECNIC`
--

CREATE TABLE `TECNIC` (
  `id_tecnic` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `administrador` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `TECNIC`
--

INSERT INTO `TECNIC` (`id_tecnic`, `nom`, `email`, `administrador`) VALUES
(1, 'Bryan Ruzafa', 'a24bryruzgon@inspedralbes.cat', 1),
(2, 'Álvaro Saldaña', 'a24alvsalalv@inspedralbes.cat', 1),
(3, 'Laura Martínez', 'lmartinez@empresa.com', 0),
(4, 'Jorge Pérezdasds', 'jperez@empresa.com', 0);

-- --------------------------------------------------------

--
-- Estructura de la taula `TIPUS_INCIDENCIA`
--

CREATE TABLE `TIPUS_INCIDENCIA` (
  `id_tipus` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `TIPUS_INCIDENCIA`
--

INSERT INTO `TIPUS_INCIDENCIA` (`id_tipus`, `nom`) VALUES
(1, 'L’ordinador no encén'),
(2, 'Sense connexió a internet'),
(3, 'El projector no funciona'),
(4, 'Problemes d\'accés a plataformes educatives'),
(5, 'Error d’inici de sessió'),
(6, 'Problemes amb el correu institucional'),
(7, 'La impressora no funciona'),
(8, 'Ordinador lent'),
(9, 'Aplicació educativa no respon'),
(10, 'Problemes amb la connexió Wi-Fi'),
(11, 'Teclat o ratolí no funcionen'),
(12, 'No es pot imprimir'),
(13, 'Problemes amb la pantalla digital'),
(14, 'Error amb programari educatiu'),
(15, 'Problemes amb el sistema operatiu'),
(16, 'Altres');

-- --------------------------------------------------------

--
-- Estructura de la taula `USUARI`
--

CREATE TABLE `USUARI` (
  `id_usuari` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `departament_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `USUARI`
--

INSERT INTO `USUARI` (`id_usuari`, `nom`, `email`, `departament_id`) VALUES
(1, 'Bryan Ruzafa', 'bryan@gmail.com', 3),
(4, 'Bryan Ruzafa', 'bryjan@gmail.com', 3),
(7, 'sadasd dawd', 'das@gmaa.ca', 1),
(8, 'papapa papapapapsosi', 'kdlsisjs@gmail.com', 3),
(9, 'ass aaa', 'aaaa@gal.coa', 2),
(10, 'A SA', 'alva@gmail.com', 1),
(11, 'dsadsa dsadsad', 'dasdsad@dosadc.caa', 2),
(12, 'Alvaro marica', 'alvaromarica@gmail.com', 6),
(13, 'Bryan a', 'alvaromaricahh@gmail.comhh', 2),
(14, 'Marcos Parcos', 'parcos@gai.coa', 4),
(15, 'jose dasds', 'bryannrg10@gmail.com', 2),
(16, 'dasdsa dsadsa', 'bryannr222g10@gmail.com', 3),
(17, 'jose manolito', 'josemanolo@gmailo.ocm', 2);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  ADD PRIMARY KEY (`id_actuacio`),
  ADD KEY `tecnic_id` (`tecnic_id`),
  ADD KEY `ACTUACIO_ibfk_2` (`incidencia_id`);

--
-- Índexs per a la taula `DEPARTAMENT`
--
ALTER TABLE `DEPARTAMENT`
  ADD PRIMARY KEY (`id_departament`);

--
-- Índexs per a la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `usuari_id` (`usuari_id`),
  ADD KEY `tipus_id` (`tipus_id`),
  ADD KEY `tecnic_id` (`tecnic_id`);

--
-- Índexs per a la taula `TECNIC`
--
ALTER TABLE `TECNIC`
  ADD PRIMARY KEY (`id_tecnic`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índexs per a la taula `TIPUS_INCIDENCIA`
--
ALTER TABLE `TIPUS_INCIDENCIA`
  ADD PRIMARY KEY (`id_tipus`);

--
-- Índexs per a la taula `USUARI`
--
ALTER TABLE `USUARI`
  ADD PRIMARY KEY (`id_usuari`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `departament_id` (`departament_id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  MODIFY `id_actuacio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la taula `DEPARTAMENT`
--
ALTER TABLE `DEPARTAMENT`
  MODIFY `id_departament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT per la taula `TECNIC`
--
ALTER TABLE `TECNIC`
  MODIFY `id_tecnic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la taula `TIPUS_INCIDENCIA`
--
ALTER TABLE `TIPUS_INCIDENCIA`
  MODIFY `id_tipus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la taula `USUARI`
--
ALTER TABLE `USUARI`
  MODIFY `id_usuari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  ADD CONSTRAINT `ACTUACIO_ibfk_1` FOREIGN KEY (`tecnic_id`) REFERENCES `TECNIC` (`id_tecnic`),
  ADD CONSTRAINT `ACTUACIO_ibfk_2` FOREIGN KEY (`incidencia_id`) REFERENCES `INCIDENCIA` (`id_incidencia`) ON DELETE CASCADE;

--
-- Restriccions per a la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  ADD CONSTRAINT `INCIDENCIA_ibfk_1` FOREIGN KEY (`usuari_id`) REFERENCES `USUARI` (`id_usuari`),
  ADD CONSTRAINT `INCIDENCIA_ibfk_2` FOREIGN KEY (`tipus_id`) REFERENCES `TIPUS_INCIDENCIA` (`id_tipus`),
  ADD CONSTRAINT `INCIDENCIA_ibfk_3` FOREIGN KEY (`tecnic_id`) REFERENCES `TECNIC` (`id_tecnic`);

--
-- Restriccions per a la taula `USUARI`
--
ALTER TABLE `USUARI`
  ADD CONSTRAINT `USUARI_ibfk_1` FOREIGN KEY (`departament_id`) REFERENCES `DEPARTAMENT` (`id_departament`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
