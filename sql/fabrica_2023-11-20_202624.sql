/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS categoria;
CREATE TABLE `categoria` (
  `codigocategoria` int(5) NOT NULL,
  `nombrecategoria` varchar(100) NOT NULL,
  PRIMARY KEY (`codigocategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS producto;
CREATE TABLE `producto` (
  `codigoproducto` int(5) NOT NULL,
  `nombreproducto` varchar(100) NOT NULL,
  `preciounitario` double(5,2) NOT NULL,
  `category` int(5) DEFAULT NULL,
  PRIMARY KEY (`codigoproducto`),
  KEY `category` (`category`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categoria` (`codigocategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
