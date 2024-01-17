/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS clientes;
CREATE TABLE `clientes` (
  `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRECLIENTE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS fecha;
CREATE TABLE `fecha` (
  `ID_FECHA` int(11) NOT NULL,
  `AÑO` int(11) NOT NULL,
  `TRIMESTRE` varchar(30) NOT NULL,
  `MES` int(11) NOT NULL,
  `DIA` int(11) NOT NULL,
  PRIMARY KEY (`ID_FECHA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS productos;
CREATE TABLE `productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `RUBRO` varchar(50) NOT NULL,
  `TIPO` varchar(30) NOT NULL,
  `NOMBREPRODUCTO` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS ventas;
CREATE TABLE `ventas` (
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_FECHA` int(11) NOT NULL,
  `COSTETOTAL` float DEFAULT NULL,
  `UTILIDAD` varchar(50) NOT NULL,
  KEY `ID_CLIENTE` (`ID_CLIENTE`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  KEY `ID_FECHA` (`ID_FECHA`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `clientes` (`ID_CLIENTE`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`ID_FECHA`) REFERENCES `fecha` (`id_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO clientes(ID_CLIENTE,NOMBRECLIENTE) VALUES('1','\'andres\''),('2','\'nataly\''),('3','\'julian\'');

INSERT INTO fecha(ID_FECHA,AÑO,TRIMESTRE,MES,DIA) VALUES('1','2012','\'tercero\'','5','1'),('2','2011','\'sexto\'','5','25'),('3','2007','\'primero\'','9','21');

INSERT INTO productos(ID_PRODUCTO,RUBRO,TIPO,NOMBREPRODUCTO) VALUES('1','\'agricultura\'','\'alimento\'','\'cebolla\''),('2','\'tecnologia\'','\'electronica\'','\'telefono\''),('3','\'material de fabricacion\'','\'metales\'','\'vehiculos\'');
INSERT INTO ventas(ID_CLIENTE,ID_PRODUCTO,ID_FECHA,COSTETOTAL,UTILIDAD) VALUES('1','1','1','3400','\'compra\''),('2','2','2','1900','\'venta\''),('2','3','3','5000','\'reparacion\'');