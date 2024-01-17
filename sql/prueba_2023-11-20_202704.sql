/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS butacacine;
CREATE TABLE `butacacine` (
  `sala` int(11) NOT NULL,
  `num_butaca` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sala`,`num_butaca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS cuidad1;
CREATE TABLE `cuidad1` (
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS cuidad2;
CREATE TABLE `cuidad2` (
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT 500
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS cuidad3;
CREATE TABLE `cuidad3` (
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT 500,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS cuidad5;
CREATE TABLE `cuidad5` (
  `clave` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(20) NOT NULL,
  `poblacion` int(11) DEFAULT 5000,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS gente;
CREATE TABLE `gente` (
  `nombre` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS granciudad;
CREATE TABLE `granciudad` (
  `id` int(11) DEFAULT NULL,
  `clave` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CLAVE PRINCIPAL',
  `nombre` char(50) NOT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






INSERT INTO granciudad(id,clave,nombre,origen,fecha) VALUES('1','1','\'barcelona\'','\'ciudad_iberica\'','\'0524-01-05\''),('2','2','\'madrid\'','\'ciudad_iberica\'','\'1210-02-04\''),('4','50','\'zaragoza\'','\'caesarugusta\'','NULL'),('5','51','\'bibao\'','\'ciudad_iberica\'','NULL'),('4','52','\'zaragoza\'','\'caesarugusta\'','NULL');