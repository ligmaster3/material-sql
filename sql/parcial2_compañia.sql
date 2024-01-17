create table clientes(
id_cedula varchar(255),
nom_cte varchar(255),
nacionalidad varchar(255),
direccion varchar(255),
telefono float(255),
celular float(255),
email varchar(255)
);

create table alquiler(
no_docum VARCHAR(255),
id_auto INT(255),
fecha_alq DATE,
dias_alq DATE,
valor_alq DATE,
id_cliente INT(255),
estatus varchar(255),
fecha_devol varchar(255),
no_docum varchar(255),
id_marcas INT(255)
);

create table marcas (
id_marcas INT(255),
nom_marca VARCHAR(255)
);

create table modelos (
id_marca INT(255),
id_modelo INT(255),
Num_modelo INT(255)
);

