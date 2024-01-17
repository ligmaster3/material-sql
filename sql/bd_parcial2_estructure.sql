/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS cliente;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecliente` varchar(50) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS compras;
CREATE TABLE `compras` (
  `idcompras` int(11) NOT NULL AUTO_INCREMENT,
  `claveproducto` int(11) DEFAULT NULL,
  `fecha` varchar(30) DEFAULT NULL,
  `talla` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `clave` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcompras`),
  KEY `claveproducto` (`claveproducto`),
  KEY `clave` (`clave`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`claveproducto`) REFERENCES `productos` (`idproducto`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`clave`) REFERENCES `provedores` (`idprovedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS productos;
CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `talla` varchar(50) DEFAULT NULL,
  `cantidad` varchar(50) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS provedores;
CREATE TABLE `provedores` (
  `idprovedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombreprovedor` varchar(50) DEFAULT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idprovedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ventas;
CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `fechaventa` varchar(30) DEFAULT NULL,
  `Claveprodvendido` int(11) DEFAULT NULL,
  `cantidadvendida` int(11) DEFAULT NULL,
  `totalnetoventa` decimal(10,2) DEFAULT NULL,
  `Clavecliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `Claveprodvendido` (`Claveprodvendido`),
  KEY `Clavecliente` (`Clavecliente`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Claveprodvendido`) REFERENCES `productos` (`idproducto`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Clavecliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;