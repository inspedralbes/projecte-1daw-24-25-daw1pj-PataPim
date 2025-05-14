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
-- -------------------------------------------------------

--
-- Estructura de la taula `USUARI`
--

CREATE TABLE `USUARI` (
  `id_usuari` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `departament_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

