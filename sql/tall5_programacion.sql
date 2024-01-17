/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS becario;
CREATE TABLE `becario` (
  `id_becario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  PRIMARY KEY (`id_becario`),
  CONSTRAINT `becario_ibfk_1` FOREIGN KEY (`id_becario`) REFERENCES `nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `becario_ibfk_2` FOREIGN KEY (`id_becario`) REFERENCES `tipo_formacion_formador` (`id_tipo_formacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id_becario | int(11)     | NO   | PRI | NULL    |       |
| nombre     | varchar(45) | NO   |     | NULL    |       |
| apellidos  | varchar(45) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

DROP TABLE IF EXISTS becario_formador;
CREATE TABLE `becario_formador` (
  `id_becario` int(11) NOT NULL,
  `id_formador` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_becario`),
  KEY `id_formador` (`id_formador`),
  CONSTRAINT `becario_formador_ibfk_1` FOREIGN KEY (`id_formador`) REFERENCES `formador` (`id_formador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+--------------+---------+------+-----+---------+-------+
| Field        | Type    | Null | Key | Default | Extra |
+--------------+---------+------+-----+---------+-------+
| id_becario   | int(11) | NO   | PRI | NULL    |       |
| id_formador  | int(11) | NO   | MUL | NULL    |       |
| fecha_inicio | date    | YES  |     | NULL    |       |
| fecha_fin    | date    | YES  |     | NULL    |       |
+--------------+---------+------+-----+---------+-------+

DROP TABLE IF EXISTS formador;
CREATE TABLE `formador` (
  `id_formador` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apelidos` varchar(45) NOT NULL,
  PRIMARY KEY (`id_formador`),
  CONSTRAINT `formador_ibfk_1` FOREIGN KEY (`id_formador`) REFERENCES `sala` (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| id_formador | int(11)     | NO   | PRI | NULL    |       |
| nombre      | varchar(45) | NO   |     | NULL    |       |
| apelidos    | varchar(45) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

DROP TABLE IF EXISTS idiomas;
CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etiqueta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int(11)     | NO   | PRI | NULL    | auto_increment |
| etiqueta | varchar(45) | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+

DROP TABLE IF EXISTS nacionalidad;
CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(11) NOT NULL,
  `etiqueta` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nacionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| id_nacionalidad | int(11)     | NO   | PRI | NULL    |       |
| etiqueta        | varchar(45) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

DROP TABLE IF EXISTS personas;
CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_idioma` (`id_idioma`),
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_idioma`) REFERENCES `idiomas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id_persona | int(11)     | NO   | PRI | NULL    | auto_increment |
| nombre     | varchar(45) | YES  |     | NULL    |                |
| apellidos  | varchar(45) | YES  |     | NULL    |                |
| edad       | int(11)     | YES  |     | NULL    |                |
| id_idioma  | int(11)     | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

DROP TABLE IF EXISTS sala;
CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `etiqueta` varchar(45) NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| id_sala           | int(11)     | NO   | PRI | NULL    |       |
| etiqueta          | varchar(45) | NO   |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+

DROP TABLE IF EXISTS tipo_formacion;
CREATE TABLE `tipo_formacion` (
  `id_tipo_formacion` int(11) NOT NULL,
  `etiqueta` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_formacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| id_tipo_formacion | int(11)     | NO   | PRI | NULL    |       |
| etiqueta          | varchar(45) | NO   |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+

DROP Table if EXISTS tipo_formacion_formador;
CREATE TABLE tipo_formacion_formador (
  id_tipo_formacion INT PRIMARY KEY NOT NULL,
  id_formacion INT NOT NULL,
  Foreign Key (id_formacion) REFERENCES formador (id_formador)
);

+-------------------+---------+------+-----+---------+-------+
| Field             | Type    | Null | Key | Default | Extra |
+-------------------+---------+------+-----+---------+-------+
| id_tipo_formacion | int(11) | NO   | PRI | NULL    |       |
| id_formacion      | int(11) | NO   | MUL | NULL    |       |
+-------------------+---------+------+-----+---------+-------+

INSERT INTO idiomas(id,etiqueta) VALUES
('1','\'frances\''),('2','\'ingles\''),('3','\'aleman\''),('4','\'ruso\'');

INSERT INTO personas(id_persona,nombre,apellidos,edad,id_idioma) VALUES
('1','\'nanie\'','\'morales\'','55','1'),('2','\'david\'','\'manrique\'','60','2'),('3','\'maria\'','\'malesa?a\'','35','3'),('4','\'roberto\'','\'megalan\'','23','1'),('5','\'manuel\'','\'olias\'','20','2'),('6','\'margarita\'','\'german\'','26','1');

insert into nacionalidad(id_nacionalidad,etiqueta)VALUES
("1","peru"),("2","china"),("3","japon");

INSERT into sala(id_sala,etiqueta)VALUES
("1","biblioteca"),("2","gerencia"),("3","administrador");

INSERT INTO tipo_formacion(id_tipo_formacion,etiqueta)VALUES
("1","policia"),("2","prescolar"),("3","abgobado");

INSERT INTO formador(id_formador,nombre,apelidos)VALUES
("1","Jaime","hernadnez"),("2","david","herrera"),("3","melani","torres");

INSERT INTO tipo_formacion_formador(id_tipo_formacion,id_formacion)VALUES
("1","1"),("2","2"),("3","3");

INSERT into becario(id_becario,nombre,apellidos)VALUES
("1","juan","garcia"),("2","tono","oviedo"),("3","maria","lopez");

insert into becario_formador(id_becario,id_formador,fecha_inicio,fecha_fin)VALUES
("1","1","2006-01-14","2021-11-20"),("2","2","1999-04-14","2020-04-19"),("3","3","2000-05-02","2023-04-08");