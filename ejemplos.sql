CREATE DATABASE consultas_agrupadas;

\c consultas_agrupadas

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    sku VARCHAR(50),
    nombre_producto VARCHAR(255),
    fecha_venta DATE,
    cantidad_vendida INT,
    precio_unitario DECIMAL(10, 2)
);

INSERT INTO ventas (sku, nombre_producto, fecha_venta, cantidad_vendida, precio_unitario) VALUES
    ('P002', 'Teléfono móvil', '2023-10-06', 2, 300.00),
    ('P002', 'Teléfono móvil', '2023-10-08', 1, 300.00),
    ('P003', 'Tablet', '2023-10-07', 3, 250.00),
    ('P003', 'Tablet', '2023-10-10', 1, 250.00),
    ('P004', 'Impresora', '2023-10-11', 2, 150.00),
    ('P005', 'Monitor', '2023-10-12', 4, 200.00),
    ('P005', 'Monitor', '2023-10-13', 2, 200.00),
    ('P006', 'Teclado', '2023-10-14', 5, 50.00),
    ('P006', 'Teclado', '2023-10-15', 3, 50.00);


-- ejemplo count

SELECT COUNT(*) FROM ventas;

SELECT COUNT(*) FROM ventas WHERE nombre_producto = 'Teléfono móvil';

-- ejemplo count distinct

SELECT COUNT(DISTINCT sku) FROM ventas;

-- ejemplo sum mas group

SELECT sku, SUM(cantidad_vendida) AS total_cantidad_vendida_por_sku FROM ventas GROUP BY sku;

--ejemplo sum basico

SELECT SUM(cantidad_vendida) FROM ventas;

SELECT nombre_producto, SUM(precio_unitario) AS total_ventas_por_producto FROM ventas GROUP BY nombre_producto;

-- ejemplo avg

SELECT AVG(precio_unitario) FROM ventas;

-- ejemplo avg mas group

SELECT sku, AVG(precio_unitario) AS precio_promedio_por_sku FROM ventas GROUP BY sku;

--ejemplo sumando, promediando y agrupando

SELECT sku, SUM(cantidad_vendida) AS total_cantidad_vendida, AVG(cantidad_vendida) AS promedio_cantidad_vendida FROM ventas GROUP BY sku;

--ejemplo having
SELECT nombre_producto, AVG(cantidad_vendida) AS promedio_cantidad_vendida FROM ventas GROUP BY nombre_producto HAVING AVG(cantidad_vendida) > 3;

--ejemplo de subquery

SELECT DISTINCT nombre_producto FROM ventas WHERE nombre_producto IN (
    SELECT nombre_producto
    FROM ventas
    GROUP BY nombre_producto
    HAVING SUM(cantidad_vendida) > 4
);
