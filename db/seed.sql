INSERT INTO categorias (id, nombre) VALUES 
(1, 'Electrónica'), (2, 'Ropa'), (3, 'Hogar');

INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES
(1, 'Laptop', 1, 1200.00, 10),
(2, 'Mouse', 1, 25.00, 3),
(3, 'Teclado', 1, 45.00, 2),
(4, 'Monitor', 1, 300.00, 15),
(5, 'Polera', 2, 20.00, 50),
(6, 'Pantalón', 2, 40.00, 4),
(7, 'Chaqueta', 2, 80.00, 8),
(8, 'Zapatos', 2, 60.00, 12),
(9, 'Lámpara', 3, 15.00, 20),
(10, 'Silla', 3, 85.00, 1),
(11, 'Mesa', 3, 150.00, 5),
(12, 'Cojín', 3, 10.00, 30);

INSERT INTO clientes (id, nombre, telefono, email) VALUES
(1, 'Juan Perez', '71234567', 'juan@example.com'),
(2, 'Maria Gomez', '72345678', 'maria@example.com'),
(3, 'Carlos Lopez', '73456789', 'carlos@example.com'),
(4, 'Ana Martinez', '74567890', 'ana@example.com'),
(5, 'Luis Rodriguez', '75678901', 'luis@example.com'),
(6, 'Pedro Sanchez', '76789012', 'pedro@example.com');

INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES
(1, 1, '2026-10-01 10:00:00', 'Completado'),
(2, 1, '2026-10-02 11:30:00', 'Completado'),
(3, 1, '2026-10-03 14:15:00', 'Pendiente'),
(4, 2, '2026-10-04 09:20:00', 'Completado'),
(5, 2, '2026-10-05 16:45:00', 'Completado'),
(6, 3, '2026-10-06 12:00:00', 'Cancelado'),
(7, 3, '2026-10-07 18:30:00', 'Completado'),
(8, 4, '2026-10-08 08:10:00', 'Pendiente'),
(9, 4, '2026-10-09 15:00:00', 'Completado'),
(10, 5, '2026-10-10 17:20:00', 'Completado');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 1200.00), (1, 2, 2, 25.00), (2, 5, 3, 20.00), (2, 6, 1, 40.00),
(3, 3, 1, 45.00), (3, 4, 1, 300.00), (4, 9, 2, 15.00), (4, 10, 1, 85.00),
(5, 7, 1, 80.00), (5, 8, 2, 60.00), (6, 11, 1, 150.00), (6, 12, 4, 10.00),
(7, 1, 1, 1200.00), (7, 5, 2, 20.00), (8, 2, 1, 25.00), (8, 3, 1, 45.00),
(9, 6, 2, 40.00), (9, 7, 1, 80.00), (10, 4, 1, 300.00), (10, 9, 1, 15.00),
(1, 5, 1, 20.00), (2, 8, 1, 60.00), (3, 2, 1, 25.00), (4, 12, 2, 10.00),
(5, 3, 1, 45.00);