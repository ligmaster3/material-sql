/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;

/* ENIER ARAUZ */ 

create database bd_parcial2;
/* 2023-11-07 20:32:47 [4986 ms] */
 
use bd_parcial2;
/* 2023-11-07 20:33:27 [6569 ms] */

CREATE Table cliente(
    idcliente INT AUTO_INCREMENT PRIMARY KEY,
    nombrecliente VARCHAR(50),
    direccion VARCHAR(45),
    telefono VARCHAR(45)
);
/* 2023-11-07 20:34:09 [292 ms] */

CREATE Table provedores(
    idprovedor INT AUTO_INCREMENT PRIMARY KEY,
    nombreprovedor VARCHAR(50),
    domicilio VARCHAR(50),
    telefono VARCHAR(50)
);
/* 2023-11-07 20:34:26 [292 ms] */

CREATE Table productos(
    idproducto INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50),
    talla VARCHAR(50),
    cantidad VARCHAR(50),
    precio VARCHAR(50)
);
/* 2023-11-07 20:34:26 [292 ms] */

CREATE Table compras (
    idcompras INT AUTO_INCREMENT PRIMARY KEY,
    claveproducto INT,
    fecha VARCHAR(30),
    talla VARCHAR(50),
    cantidad INT,
    precio DECIMAL(10,2),
    total DECIMAL(10,2),
    clave INT,
    FOREIGN KEY (Claveproducto) REFERENCES productos(idproducto),
    FOREIGN KEY (Clave) REFERENCES provedores(idprovedor)
);

/* 2023-11-07 20:37:08 [322 ms] */ 
CREATE TABLE Ventas (
  idventa INT AUTO_INCREMENT PRIMARY KEY,
  fechaventa VARCHAR(30),
  Claveprodvendido INT,
  cantidadvendida INT,
  totalnetoventa DECIMAL(10, 2),
  Clavecliente INT,
  FOREIGN KEY (Claveprodvendido) REFERENCES Productos(idproducto),
  FOREIGN KEY (Clavecliente) REFERENCES cliente(Idcliente)
);
 /* 2023-11-07 21:30:00 [1317 ms] */ 

insert into cliente(idcliente,nombrecliente,direccion,telefono)VALUES
('1','lorenzo','las canarias','4-636-8534'),
('2','juan','maldivas','6-773-855'),
('3','francisco','zurichi','3-7346-463'),
('4','jorgito','northlake','6-3684-2565'),
('5','nathan','magdalena','12-536-854');

INSERT into provedores(nombreprovedor,domicilio,telefono) VALUES
('alejandr',' av lanburch','4-6337-2633'),
('abysaid','av loumbrich','57-4785-3855'),
('dexter','av stean','12-79035-6454'),
('javier','power strik','5-3456-38754'),
('marco','av ivane brich','42-1264-854');
 /* 2023-11-07 21:30:00 [1317 ms] */ 

insert into productos ( descripcion, talla, cantidad, precio) VALUES
('leche','4','2','1.23'),
('huevo','16','2','2.85'),
('cane de oveja','4','3','34.24'),
('ceviche','2','1','1.24'),
('pescado','12','3','9.20');
/* 2023-11-07 21:36:47 [122 ms] */

INSERT INTO compras (claveproducto,fecha,talla,cantidad,precio,total,clave) VALUES
('1','3-3','2','6','2.00','16.00','1'),
('2','5-6','3','5','4.60','20.00','2'),
('3','6-8','12','1','5.70','5.70','3'),
('4','12-10','19','2','14.00','32.70','4'),
('5','5-11','3','4','5.20','16.86','5');
/* 2023-11-07 22:05:22 [1509 ms] */ 

INSERT INTO ventas(fechaventa,Claveprodvendido,cantidadvendida,totalnetoventa,Clavecliente) VALUES
('3-4','1','3','4.55','1'),
('7-9','2','1','7.50','2'),
('3-8','3','2','1.00','3'),
('5-7','4','3','8.75','4'),
('4-10','5','4','3.85','5');

SELECT nombrecliente FROM cliente;

+---------------+
| nombrecliente |
+---------------+
| lorenzo       |
| juan          |
| francisco     |
| jorgito       |
| nathan        |
+---------------+
/* 2023-11-07 22:19:10 [2016 ms] */ 

SELECT Idcliente, SUM(totalnetoventa) AS total 
FROM cliente,ventas,compras
GROUP BY Idcliente 
ORDER BY total DESC 
LIMIT 1;
+-----------+--------+
| Idcliente | total  |
+-----------+--------+
|         1 | 128.25 |
+-----------+--------+

SELECT totalnetoventa, cantidadvendida, fechaventa
FROM ventas;
+----------------+-----------------+------------+
| totalnetoventa | cantidadvendida | fechaventa |
+----------------+-----------------+------------+
|           4.55 |               3 | 3-4        |
|           7.50 |               1 | 7-9        |
|           1.00 |               2 | 3-8        |
|           8.75 |               3 | 5-7        |
|           3.85 |               4 | 4-10       |
+----------------+-----------------+------------+

SELECT provedores.nombreprovedor, productos.descripcion
FROM provedores INNER JOIN productos ON provedores.idprovedor = productos.idproducto;
+----------------+---------------+
| nombreprovedor | descripcion   |
+----------------+---------------+
| alejandr       | leche         |
| abysaid        | huevo         |
| dexter         | cane de oveja |
| javier         | ceviche       |
| marco          | pescado       |
+----------------+---------------+

 SELECT * FROM compras WHERE cantidad < 10;
+-----------+---------------+-------+-------+----------+--------+-------+-------+
| idcompras | claveproducto | fecha | talla | cantidad | precio | total | clave |
+-----------+---------------+-------+-------+----------+--------+-------+-------+
|         1 |             1 | 3-3   | 2     |        6 |   2.00 | 16.00 |     1 |
|         2 |             2 | 5-6   | 3     |        5 |   4.60 | 20.00 |     2 |
|         3 |             3 | 6-8   | 12    |        1 |   5.70 |  5.70 |     3 |
|         4 |             4 | 12-10 | 19    |        2 |  14.00 | 32.70 |     4 |
|         5 |             5 | 5-11  | 3     |        4 |   5.20 | 16.86 |     5 |
+-----------+---------------+-------+-------+----------+--------+-------+-------+
5 rows in set (0.001 sec)

 SELECT * FROM compras WHERE cantidad < 5;
+-----------+---------------+-------+-------+----------+--------+-------+-------+
| idcompras | claveproducto | fecha | talla | cantidad | precio | total | clave |
+-----------+---------------+-------+-------+----------+--------+-------+-------+
|         3 |             3 | 6-8   | 12    |        1 |   5.70 |  5.70 |     3 |
|         4 |             4 | 12-10 | 19    |        2 |  14.00 | 32.70 |     4 |
|         5 |             5 | 5-11  | 3     |        4 |   5.20 | 16.86 |     5 |
+-----------+---------------+-------+-------+----------+--------+-------+-------+
3 rows in set (0.002 sec)