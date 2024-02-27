/* CREATE TABLE datos_del_vehiculo(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    placa VARCHAR(10) UNIQUE, 
    color VARCHAR(20),
    modelo VARCHAR(45),
    marca VARCHAR(30),
    clase VARCHAR(50),
    usuariokey INT(3),
    duenokey INT(3), 
    Foreign Key (usuariokey) REFERENCES datos_del_usuario(id),
    Foreign Key (duenokey) REFERENCES dueno_del_vehiculo(id)
);

CREATE TABLE datos_del_usuario(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    nombres VARCHAR(40),
    edad INT(3), 
    tipo_documento VARCHAR(20),
    numero_de_documento INT(20),
    numero_de_contacto INT(11),
    propietariokey INT(3),
    vehiculokey INT(3)
);

CREATE TABLE dueno_del_vehiculo(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    nombres VARCHAR(40),
    edad INT(3),
    tipo_documento VARCHAR(20),
    numero_de_documento INT(20),
    numero_de_contacto INT(20),
    vehiculokey INT(3)
);

CREATE TABLE datos_de_ingreso(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    hora_de_entrada DATETIME,
    hora_de_salida DATETIME,
    usuariokey INT(3),
    vehiculokey INT(3)
);

/* CREATE TABLE plazas(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    A1 INT(1),
    A2 INT(1), 
    A3 INT(1),
    A4 INT(1),
    A5 INT(1)
); */


/* 1
deklan
21
cc
1616161
212446464

2
1252AAF2
rojo
no sè
renaults
deportivo
1 */

DROP TABLE datos_del_vehiculo;
DROP TABLE datos_del_usuario;
DROP TABLE dueno_del_vehiculo;
DROP TABLE datos_de_ingreso;


INSERT INTO datos_del_usuario (nombres, edad, tipo_documento, numero_de_documento, numero_de_contacto)
VALUES
("Juan Perez", 30, "DNI", 12345678, 5551234),
("Maria Garcia", 25, "Pasaporte", 1234567, 5555678),
("Carlos Lopez", 35, "Cédula", 87654321, 5559012),
("Ana Rodriguez", 28, "DNI", 98765432, 5553456),
("Pedro Martinez", 40, "Cédula", 56789012, 5557890),
("Laura Sanchez", 22, "Pasaporte", 7654321, 5552345),
("Diego Gomez", 32, "DNI", 23456789, 5556789),
("Sofia Fernandez", 27, "Pasaporte", 6543210, 5551235),
("Luis Ramirez", 38, "Cédula", 34567890, 5556780),
("Gabriela Torres", 29, "DNI", 45678901, 5552341);

INSERT INTO datos_del_vehiculo (placa, color, modelo, marca, clase,usuariokey)
VALUES
("A5C123", "Rojo", "2015", "Toyota", "Sedán",1),
("DEF456", "Blanco", "2018", "Honda", "SUV",2),
("GHI789", "Negro", "2019", "Ford", "Pickup",3),
("JKL012", "Gris", "2017", "Chevrolet", "Hatchback",4),
("MNO345", "Azul", "2020", "Nissan", "Coupé",5),
("PQR678", "Plateado", "2016", "Volkswagen", "Familiar",6),
("STU901", "Verde", "2014", "BMW", "Deportivo",7),
("VWX234", "Amarillo", "2013", "Mercedes", "Convertibe",8),
("YZA567", "Morado", "2021", "Audi", "Todo terreno",9),
("BCD890", "Café", "2012", "Kia", "Minivan",10); */

SELECT datos_del_usuario.nombres,datos_del_vehiculo.placa FROM datos_del_vehiculo INNER JOIN datos_del_usuario WHERE datos_del_usuario.id = datos_del_vehiculo.usuariokey AND datos_del_vehiculo.placa = "VWX234";

ALTER Table datos_del_usuario ADD  Foreign Key (vehiculokey) REFERENCES datos_del_vehiculo(id)

UPDATE datos_del_usuario set vehiculokey = 6 WHERE datos_del_usuario.id = 1

INSERT INTO datos_del_usuario(vehiculokey) VALUES(2)


CREATE TABLE(
    id INT(3) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25)
);
CREATE Table  colores(
    id INT(3) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25)
);

    CREATE table tipo_documeto(
        id INT(3) PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(25)
    );

CREATE TABLE vehiculos(
    id INT(11) PRIMARY key AUTO_INCREMENT NOT NULL,
    modelo  VARCHAR(25),
    placa VARCHAR(10)UNIQUE,
    usuarios_id INT(3),
    tipo_vehiculo_id INT(3),
    colores_id INT(3),
    marca_id INT(3)
);
 
ALTER Table vehiculos ADD llantas VARCHAR(20);


ALTER Table usuarios ADD  Foreign Key (tipo_documento_id	
) REFERENCES usuarios(id)

INSERT INTO colores (nombre)
VALUES
("Rojo"),
("Azul"),
("Verde"),
("Blanco"),
("Negro"),
("Gris"),
("Amarillo"),
("Morado"),
("Naranja"),
("Rosado");
INSERT INTO marcas (nombre)
VALUES
("Toyota"),
("Honda"),
("Ford"),
("Chevrolet"),
("Nissan"),
("Volkswagen"),
("BMW"),
("Mercedes"),
("Audi"),
("Kia");
    INSERT INTO tipo_de_vehiculo (nombre)
    VALUES
    ("Sedán"),
    ("SUV"),
    ("Pickup"),
    ("Hatchback"),
    ("Coupé"),
    ("Familiar"),
    ("Deportivo"),
    ("Convertible"),
    ("Todo terreno"),
    ("Minivan");

INSERT INTO tipo_de_documento (tipo)
VALUES
("DNI"),
("Pasaporte"),
("Cédula de Ciudadanía"),
("Tarjeta de Identidad"),
("Cédula de Extranjería"),
("Licencia de Conducir"),
("Carné Estudiantil"),
("Certificado de Nacimiento"),
("Tarjeta de Residencia"),
("Documento Nacional de Identidad");



SELECT c.nombre as color , m.nombre as marca, t.nombre as tipo , v.placa, u.nombres FROM vehiculos v INNER JOIN colores c INNER JOIN tipo_vehiculo t INNER JOIN marcas m INNER JOIN usuarios u where v.colores_id = c.id AND v.tipo_vehiculo_id =  t.id and v.marca_id = m.id and v.usuarios_id = u.id