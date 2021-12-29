-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.5-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para dsag04
CREATE DATABASE IF NOT EXISTS `dsag04` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `dsag04`;

-- Volcando estructura para tabla dsag04.game
CREATE TABLE IF NOT EXISTS `Game` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `playerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_game_user` (`playerID`),
  CONSTRAINT `FK_game_user` FOREIGN KEY (`playerID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla dsag04.items
CREATE TABLE IF NOT EXISTS `Items` (
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla dsag04.user
CREATE TABLE IF NOT EXISTS `User` (
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mail` varchar(250) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `highScore` int(11) DEFAULT 0,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla dsag04.userinventory
CREATE TABLE IF NOT EXISTS `UserInventory` (
  `id_u` int(11) DEFAULT NULL,
  `id_i` int(11) DEFAULT NULL,
  KEY `FK_user` (`id_u`),
  KEY `FK_item` (`id_i`),
  CONSTRAINT `FK_item` FOREIGN KEY (`id_i`) REFERENCES `items` (`ID`),
  CONSTRAINT `FK_user` FOREIGN KEY (`id_u`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

