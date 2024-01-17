/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS articulos;
CREATE TABLE `articulos` (
  `codigoart` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double(5,2) NOT NULL,
  `fabricante` int(5) NOT NULL,
  PRIMARY KEY (`codigoart`),
  KEY `fabricante` (`fabricante`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`fabricante`) REFERENCES `fabricantes` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS fabricantes;
CREATE TABLE `fabricantes` (
  `codigo` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO articulos(codigoart,nombre,precio,fabricante) VALUES('1','\'GALAXY S8\'','158.00','1'),('2','\'HONO 5X\'','98.60','2'),('3','\'IPhone 8\'','144.00','3'),('4','\'Lenovo i5\'','300.00','4'),('5','\'HP DE ESCRITORIO\'','429.00','5');
INSERT INTO fabricantes(codigo,nombre) VALUES('1','\'ANDROID\''),('2','\'HUAWEI\''),('3','\'APPLE\''),('4','\'LENOVO\''),('5','\'HP\'');