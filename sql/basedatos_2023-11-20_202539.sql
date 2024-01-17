/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS butaca_cine;
CREATE TABLE `butaca_cine` (
  `sala` int(11) NOT NULL,
  `num_butaca` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sala`,`num_butaca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ciudad1;
CREATE TABLE `ciudad1` (
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ciudad2;
CREATE TABLE `ciudad2` (
  `nombre` char(20) DEFAULT NULL,
  `poblacion` int(11) DEFAULT 5000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ciudad3;
CREATE TABLE `ciudad3` (
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT 5000,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ciudad4;
CREATE TABLE `ciudad4` (
  `clave` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(20) DEFAULT NULL,
  `poblacion` int(11) DEFAULT 5000,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS gente;
CREATE TABLE `gente` (
  `nombre` varchar(20) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS grancuidad;
CREATE TABLE `grancuidad` (
  `clave` int(11) NOT NULL AUTO_INCREMENT COMMENT 'clave Key',
  `nombre` char(50) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS prueba;
CREATE TABLE `prueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'clave Key',
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






