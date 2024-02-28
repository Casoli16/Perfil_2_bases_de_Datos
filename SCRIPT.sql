DROP DATABASE IF EXISTS db_libro_express;

CREATE DATABASE db_libro_express;

USE db_libro_express;

CREATE TABLE clientes(
id_cliente BINARY(36) PRIMARY KEY DEFAULT UUID(),
nombre_cliente VARCHAR(50),
email_cliente VARCHAR(100),
telefono VARCHAR(10) 
);

CREATE TABLE generos_libros(
id_genero_libro BINARY(36) PRIMARY KEY DEFAULT UUID(),
nombre_genero_libro VARCHAR(50)
);

CREATE TABLE prestamos(
id_prestamo BINARY(36) PRIMARY KEY DEFAULT UUID(),
id_cliente BINARY(36),
fecha_inicio DATE,
fecha_devolucion DATE,
estado ENUM('activo', 'inactivo', 'pendiente') 
);

CREATE TABLE detalles_prestamos(
id_detalle_prestamo BINARY(36) PRIMARY KEY DEFAULT UUID(),
id_prestamo BINARY(35),
id_libro BINARY(35)
);

CREATE TABLE libros (
id_libro BINARY(36) PRIMARY KEY DEFAULT UUID(),
titulo_libro VARCHAR(50),
anio_publicacion INT,
id_genero_libro BINARY(36),
estado ENUM('activo', 'inactivo', 'pendiente')
);

-- Constraints con nombres, aqui van las foreign keys
ALTER TABLE prestamos
ADD CONSTRAINT fk_cliente_prestamo FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE detalles_prestamos
ADD CONSTRAINT fk_prestamos_detalles_prestamos FOREIGN KEY (id_prestamo) REFERENCES prestamos(id_prestamo);

ALTER TABLE detalles_prestamos
ADD CONSTRAINT fk_libros_detalles_prestamos FOREIGN KEY (id_libro) REFERENCES libros(id_libro);

ALTER TABLE libros
ADD CONSTRAINT fk_generos_libros_libros FOREIGN KEY (id_genero_libro) REFERENCES generos_libros(id_genero_libro);

-- Constraints con nombres, aqui van los check y deafault, porque solo esos encontramos necesarios
ALTER TABLE clientes
ADD CONSTRAINT ch_telefono_clientes CHECK(LENGTH(telefono) > 8);

ALTER TABLE prestamos 
ALTER COLUMN fecha_inicio SET DEFAULT '2024-01-01';

ALTER TABLE prestamos 
ALTER COLUMN fecha_devolucion SET DEFAULT '2024-01-02';

ALTER TABLE libros 
ADD CONSTRAINT ch_anio_publicacion_libros CHECK(anio_publicacion > 1990);

-- Procedimientos almacenados para cada tabla

-- Tabla clientes

DELIMiTER //

CREATE PROCEDURE agregar_cliente(nombre VARCHAR(50), email VARCHAR(100), telefono VARCHAR(10))
BEGIN
        
    INSERT INTO clientes(nombre_cliente, email_cliente, telefono) VALUES (nombre, email, telefono);

END //

DELIMITER ;


-- Tabla generos_libros

DELIMiTER //

CREATE PROCEDURE agregar_generos_libros(nombre VARCHAR(50))
BEGIN
        
    INSERT INTO generos_libros(nombre_genero_libro) VALUES (nombre);

END //

DELIMITER ;


-- Tabla prestamos

DELIMiTER //

CREATE PROCEDURE agregar_prestamos(id_clientee BINARY(36), fecha_i DATE, fecha_d DATE, estado ENUM('activo', 'inactivo', 'pendiente'))
BEGIN
        
    INSERT INTO prestamos(id_cliente, fecha_inicio, fecha_devolucion, estado) VALUES (id_clientee, fecha_i, fecha_d, estado);

END //

DELIMITER ;


-- Tabla detalle_prestamos

DELIMiTER //

CREATE PROCEDURE agregar_detalles_prestamos(id_prestamoo BINARY(36), id_libroo BINARY(36))
BEGIN
        
    INSERT INTO detalles_prestamos(id_prestamo, id_libro) VALUES (id_prestamoo, id_libroo);

END //

DELIMITER ;


-- Tabla libros

DELIMiTER //

CREATE PROCEDURE agregar_libros(titulo_libroo VARCHAR(50), anio_publicacionn INT, id_genero_libroo BINARY(36), estadoo ENUM('activo', 'inactivo', 'pendiente'))
BEGIN
        
    INSERT INTO libros(titulo_libro, anio_publiacion, id_genero_libro, estado) VALUES (titulo_libroo, anio_publicacionn, id_genero_libroo, estado);

END //

DELIMITER ;


