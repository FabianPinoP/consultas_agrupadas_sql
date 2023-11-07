
CREATE DATABASE tiendita;

\c tiendita

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    producto VARCHAR(255),
    fecha_venta DATE,
    cantidad_vendida INT,
    precio_unitario DECIMAL(10, 2)
);

INSERT INTO ventas (producto, fecha_venta, cantidad_vendida, precio_unitario) VALUES
    ('Laptop', '2023-10-01', 5, 800.00),
    ('Impresora', '2023-10-02', 3, 150.00),
    ('Tablet', '2023-10-03', 2, 250.00),
    ('Monitor', '2023-10-03', 1, 300.00),
    ('Laptop', '2023-10-04', 4, 750.00),
    ('Teléfono móvil', '2023-10-01', 7, 300.00),
    ('Impresora', '2023-10-02', 1, 150.00),
    ('Tablet', '2023-10-04', 3, 220.00),
    ('Monitor', '2023-10-05', 2, 290.00),
    ('Laptop', '2023-10-05', 6, 780.00);

-- Ejercicio 1: Calcula el promedio de precios unitarios de todos los productos.

-- Ejercicio 2: ¿Cuál es el producto más vendido?

-- Ejercicio 3: Obtener el total de ventas por producto (debes hacer una multiplicacion)

-- Ejercicio 4: Obtener el total de ventas por fecha

-- Ejercicio 5: Obtener el total de ventas por producto, solo para productos con un precio unitario superior a 200 (usa having)

-- Ejercicio 6 (subconsulta): Obtener el total de ventas por producto, solo para productos que se vendieron en una fecha determinada
-- ¿Cuál es el total de ventas por producto, solo para productos que se vendieron el 1 de octubre de 2023?