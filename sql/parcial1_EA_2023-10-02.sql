/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;

---------------------------------------------------------------------
CREATE TABLE `cliente_ea` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  CONSTRAINT `cliente_ea_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `comuna_ea` (`idcomuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `comuna_ea` (
  `idcomuna` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcomuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `formapago_ea` (
  `idformapago` int(11) NOT NULL,
  `tipopago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idformapago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `listaformapago_ea` (
  `idlistaformapago` int(11) NOT NULL,
  PRIMARY KEY (`idlistaformapago`),
  CONSTRAINT `listaformapago_ea_ibfk_1` FOREIGN KEY (`idlistaformapago`) REFERENCES `formapago_ea` (`idformapago`),
  CONSTRAINT `listaformapago_ea_ibfk_2` FOREIGN KEY (`idlistaformapago`) REFERENCES `cliente_ea` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `listmedicamentos_ea` (
  `idlistamedicamento` int(11) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  KEY `idlistamedicamento` (`idlistamedicamento`),
  CONSTRAINT `listmedicamentos_ea_ibfk_1` FOREIGN KEY (`idlistamedicamento`) REFERENCES `pedido_ea` (`idpedido`),
  CONSTRAINT `listmedicamentos_ea_ibfk_2` FOREIGN KEY (`idlistamedicamento`) REFERENCES `medicamentos_ea` (`idmedicamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `medicamentos_ea` (
  `idmedicamentos` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `fechavencimineto` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmedicamentos`),
  CONSTRAINT `medicamentos_ea_ibfk_1` FOREIGN KEY (`idmedicamentos`) REFERENCES `tipomedicamneto_ea` (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `pedido_ea` (
  `idpedido` int(11) NOT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  CONSTRAINT `pedido_ea_ibfk_1` FOREIGN KEY (`idpedido`) REFERENCES `cliente_ea` (`idcliente`),
  CONSTRAINT `pedido_ea_ibfk_2` FOREIGN KEY (`idpedido`) REFERENCES `vendedor_ea` (`idvenderdor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tipomedicamneto_ea` (
  `idtipo` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `vendedor_ea` (
  `idvenderdor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvenderdor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO cliente_ea(idcliente,nombre,rut,direccion,email,fono) VALUES('1','\'angel\'','\'101\'','\'chorillo\'','\'sanchez@gmail.com\'','\'6436-3655\''),('2','\'maria\'','\'204\'','\'manzanillo\'','\'maria@gmail.com\'','\'3664-6745\''),('3','\'luis\'','\'345\'','\'la rivera\'','\'luispt@gmail.com\'','\'6556-4565\''),('4','\'miguel\'','\'777\'','\'el palmar\'','\'miguel724@gmail.com\'','\'6364-7656\''),('5','\'manuel\'','\'464\'','\'bocas del toro\'','\'manuek29@gmail.com\'','\'1557-8335\'');

INSERT INTO comuna_ea(idcomuna,nombre) VALUES('1','\'dolega\''),('2','\'el palmar\''),('3','\'blanco\''),('4','\'herrera\''),('5','\'arauz\'');

INSERT INTO formapago_ea(idformapago,tipopago) VALUES('1','\'tarjeta\''),('2','\'efectivo\''),('3','\'banca en linea\'');

INSERT INTO listaformapago_ea(idlistaformapago) VALUES('1'),('2'),('3');

INSERT INTO listmedicamentos_ea(idlistamedicamento,cantidad,precio) VALUES('1','\'10\'','\'7.50\''),('2','\'4\'','\'4.80\''),('3','\'2\'','\'3.22\'');

INSERT INTO medicamentos_ea(idmedicamentos,nombre,codigo,fechavencimineto,precio) VALUES('1','\'carbedidol\'','\'307\'','\'04-05-2027\'','\'12.00\''),('2','\'gastrigel\'','\'1001\'','\'02-11-2026\'','\'3.75\''),('3','\'oralB\'','\'525\'','\'15-05-2026\'','\'22.99\'');

INSERT INTO pedido_ea(idpedido,hora,fecha) VALUES('1','\'3:00\'','\'4.2025\''),('2','\'4:00\'','\'6-2027\''),('3','\'4.25\'','\'1-2023\'');

INSERT INTO tipomedicamneto_ea(idtipo,tipo) VALUES('1','\'tabletas\''),('2','\'liquida\''),('3','\'oral\'');
INSERT INTO vendedor_ea(idvenderdor,nombre,rut,direccion,email,fono) VALUES('1','\'jose\'','\'506\'','\'santa marta\'','\'marigomes@gmail.com\'','\'3534-4298\''),('2','\'harry\'','\'400\'','\'divala\'','\'reaperharry@gmail.com\'','\'90422-6445\''),('3','\'sergio\'','\'700\'','\'san franciso\'','\'segio34@gmail.com\'','\'5457-4686\'');