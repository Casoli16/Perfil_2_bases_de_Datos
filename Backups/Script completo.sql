USE db_libro_express;

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


-- INSERTS DE TODAS LAS TABLAS
-- Tabla clientes
CALL agregar_cliente ('Luis', 'luis@gmail.com', '6983 9847');
CALL agregar_cliente('Josue', 'Josue@gmail.com', '2022 0229');
CALL agregar_cliente('María', 'maria@example.com', '123456789');
CALL agregar_cliente('Pedro', 'pedro@example.com', '987654321');
CALL agregar_cliente('Ana', 'ana@example.com', '555123456');
CALL agregar_cliente('Juan', 'juan@example.com', '987987654');
CALL agregar_cliente('Luis', 'luis@example.com', '654987321');
CALL agregar_cliente('Sofía', 'sofia@example.com', '321555123');
CALL agregar_cliente('Carlos', 'carlos@example.com', '456789123');
CALL agregar_cliente('Laura', 'laura@example.com', '789321654');
CALL agregar_cliente('Diego', 'diego@example.com', '214365879');
CALL agregar_cliente('Elena', 'elena@example.com', '987654123');
CALL agregar_cliente('Miguel', 'miguel@example.com', '654123789');
CALL agregar_cliente('Lucía', 'lucia@example.com', '789654321');
CALL agregar_cliente('Pablo', 'pablo@example.com', '123789456');

-- tabla generos de libros
CALL agregar_generos_libros('Fantasia');
CALL agregar_generos_libros('Terror');
CALL agregar_generos_libros('Romance');
CALL agregar_generos_libros('Ciencia ficción');
CALL agregar_generos_libros('Misterio');
CALL agregar_generos_libros('Fantasía');
CALL agregar_generos_libros('Aventura');
CALL agregar_generos_libros('Drama');
CALL agregar_generos_libros('Suspenso');
CALL agregar_generos_libros('Histórico');
CALL agregar_generos_libros('Comedia');
CALL agregar_generos_libros('Biografía');
CALL agregar_generos_libros('Infantil');
CALL agregar_generos_libros('Poesía');
CALL agregar_generos_libros('Video juegos');

-- tabla libros
CALL agregar_libro ('El mago de oz', 1991, '7788e64b-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_libro ('IT', 1995, 'afc04e42-d652-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_libro ('El amor', 2005, 'e39e0574-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_libro('El señor de las moscas', 2000, 'e3a48ea1-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_libro('Crimen y castigo', 2000, 'e3a7bff9-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_libro('La Odisea', 2000, 'e3aabe1e-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_libro('1984', 2000, 'e3addebf-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_libro('Cien años de soledad', 2000, 'e3b4ff8f-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_libro('La metamorfosis', 2000, 'e3b7e1d2-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_libro('Don Quijote de la Mancha', 2000, 'e3bc3498-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_libro('Moby-Dick', 2000, 'e3c0ef4c-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_libro('Orgullo y prejuicio', 2000, 'e3c5ec7b-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_libro('Las aventuras de Tom Sawyer', 2000, 'e3cade9e-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_libro('Cumbres borrascosas', 2000, 'e3cf5da9-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');

-- tablprestamos
CALL agregar_prestamos('244f524b-d652-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_prestamos('581825ae-d659-11ee-9d4a-5cbaef0d8908', 'incativo');
CALL agregar_prestamos('581825ae-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_prestamos('244f524b-d652-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_prestamos('581825ae-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_prestamos('581b1b9d-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_prestamos('581dfe15-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_prestamos('5820db6c-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_prestamos('5824b9f4-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_prestamos('58288931-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_prestamos('582bff50-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_prestamos('582f8da5-d659-11ee-9d4a-5cbaef0d8908', 'pendiente');
CALL agregar_prestamos('58329df9-d659-11ee-9d4a-5cbaef0d8908', 'activo');
CALL agregar_prestamos('583c99a4-d659-11ee-9d4a-5cbaef0d8908', 'inactivo');
CALL agregar_prestamos('a74695be-d658-11ee-9d4a-5cbaef0d8908', 'pendiente');

-- tabla detalles prestamos
CALL agregar_detalles_prestamos('64b74928-d65f-11ee-9d4a-5cbaef0d8908','8ad35efa-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64b74928-d65f-11ee-9d4a-5cbaef0d8908','8ad35efa-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64bea95b-d65f-11ee-9d4a-5cbaef0d8908','8ad864ad-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64c0faed-d65f-11ee-9d4a-5cbaef0d8908','8ada9807-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64c33d65-d65f-11ee-9d4a-5cbaef0d8908','8adcb7c1-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64c7c420-d65f-11ee-9d4a-5cbaef0d8908','8adee189-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64c9f61a-d65f-11ee-9d4a-5cbaef0d8908','8ae13e1d-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64cd35be-d65f-11ee-9d4a-5cbaef0d8908','8ae3510d-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64d0a099-d65f-11ee-9d4a-5cbaef0d8908','8ae58476-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64d3a5b7-d65f-11ee-9d4a-5cbaef0d8908','8ae7a714-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64d696a7-d65f-11ee-9d4a-5cbaef0d8908','8aec32df-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64d9a8f4-d65f-11ee-9d4a-5cbaef0d8908','8af1c57f-d65d-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('64dcbe74-d65f-11ee-9d4a-5cbaef0d8908','9bd6ddb2-d65c-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('b6c62b48-d65e-11ee-9d4a-5cbaef0d8908','c3817493-d65c-11ee-9d4a-5cbaef0d8908');
CALL agregar_detalles_prestamos('b6ca1f65-d65e-11ee-9d4a-5cbaef0d8908','e4665e85-d65c-11ee-9d4a-5cbaef0d8908');