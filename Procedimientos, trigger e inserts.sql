USE db_libro_expres

-- Procedimientos, Inserts y trigger

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


-- TRIGGER
DELIMITER //

CREATE TRIGGER actualizar_estado_libro AFTER INSERT ON detalles_prestamos
FOR EACH ROW
BEGIN 
	UPDATE libros 
	SET estado = 'pendiente'
	WHERE id_libro = NEW.id_libro;
END

//
DELIMITER;
