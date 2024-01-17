/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS departamento;
CREATE TABLE `departamento` (
  `CLAVE_DEPTO` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `PRESUPUESTO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLAVE_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS empleados;
CREATE TABLE `empleados` (
  `CLAVE_EMPLEADO` varchar(8) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `APELLIDOS` varchar(20) DEFAULT NULL,
  `CLAVE_DEPTO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLAVE_EMPLEADO`),
  KEY `CLAVE_DEPTO` (`CLAVE_DEPTO`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`CLAVE_DEPTO`) REFERENCES `departamento` (`CLAVE_DEPTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO departamento(CLAVE_DEPTO,NOMBRE,PRESUPUESTO) VALUES('1','\'personal\'','8000'),('2','\'almacen\'','70000'),('3','\'contabilidad\'','6000'),('4','\'manipulacion\'','50000'),('5','\'empaque\'','30000');
INSERT INTO empleados(CLAVE_EMPLEADO,NOMBRE,APELLIDOS,CLAVE_DEPTO) VALUES('\'EMP01\'','\'ARMANDO\'','\'LOPEZ\'','2'),('\'EMP02\'','\'TATIANA\'','\'VARGAS\'','1'),('\'EMP03\'','\'LAURA\'','\'ITURRIA\'','3'),('\'EMP04\'','\'JUAN\'','\'PEREZ\'','4'),('\'EMP05\'','\'IVAN\'','\'LOPEZ\'','4'),('\'EMP06\'','\'MARGARITA\'','\'HERNANDEZ\'','1'),('\'EMP07\'','\'JESUS\'','\'PEREZ\'','3'),('\'EMP08\'','\'TONATIUH\'','\'FLORES\'','2'),('\'EMP09\'','\'JUAN\'','\'MARTINES\'','5'),('\'EMP10\'','\'JOSE\'','\'HERNANDEZ\'','4'),('\'EMP11\'','\'PAUL\'','\'CRUZ\'','1');