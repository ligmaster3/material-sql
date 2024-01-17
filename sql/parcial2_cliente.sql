
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `Idcliente` int NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  `numcompras` int DEFAULT NULL,
  PRIMARY KEY (`Idcliente`)
) 




INSERT INTO `cliente` VALUES (5,'nichael',8,6),(35,'armin',7,4),(64,'jean',6,3),(94,'mikey',23,3),(656,'eren',21,2);

