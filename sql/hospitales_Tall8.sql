/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS enfermedades;
CREATE TABLE `enfermedades` (
  `id_codigo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `complicaciones` varchar(50) NOT NULL,
  PRIMARY KEY (`id_codigo`),
  CONSTRAINT `enfermedades_ibfk_1` FOREIGN KEY (`id_codigo`) REFERENCES `laboratorio` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS hospital;
CREATE TABLE `hospital` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS laboratorio;
CREATE TABLE `laboratorio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS medico;
CREATE TABLE `medico` (
  `cedula_identidad` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS paciente;
CREATE TABLE `paciente` (
  `cedula_identidad` varchar(10) NOT NULL,
  `numero_registro` int(11) DEFAULT NULL,
  `numero_cama` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `sexo` char(5) DEFAULT NULL,
  PRIMARY KEY (`cedula_identidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS sala;
CREATE TABLE `sala` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `hospital` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO hospital(codigo,nombre,direccion,telefono,cantidad) VALUES('1','\'dionisio arrocha\'','\'david\'','\'537-1014\'','30'),('2','\'felipe oroseena\'','\'penonome\'','\'678-3530\'','30'),('3','\'julio chavez\'','\'panama\'','\'388-8283\'','55');

INSERT INTO sala(codigo,nombre,cantidad)VALUES('1','hemodialisis','12'),('2','inyectable','6'),('3','emergencia','12')

INSERT INTO medico(cedula_identidad,nombre,especialidad)VALUES('3-632-674','david','pediatria'),('4-655-8514','matias','neurologia'),('5-353-1455','juan','cardiologia')

INSERT INTO laboratorio(codigo,nombre,direccion,telefono)VALUES('42','miguel','chorrera','5534-7456'),('33','fercho','madre vieja','3845-7392'),('62','tomas','lakebok','8345-3575')

INSERT INTO paciente(cedula_identidad,numero_registro,numero_cama,nombre,direccion,fecha_nacimiento,sexo)VALUES('6-4626-8885','20','30','julian','progreso','2-2-1994','m'),('7-463-1042','56','24','pepe','san valentin','7-4-2000','m'),('4-525-1075','63','25','maria','verba','6-09-1999','f')

INSERT INTO enfermedades(tipo,complicaciones)VALUES('resfriado','dolores'),('diabetes','problemas de circulacion'),('infecciosas','fiebre')