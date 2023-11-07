
-- ejercicio 1

SELECT AVG(precio_unitario) AS promedio_precio_unitario FROM ventas;

-- ejercicio 2

SELECT producto, COUNT(*) AS cantidad_vendida FROM ventas GROUP BY producto ORDER BY cantidad_vendida DESC LIMIT 1;

-- ejercicio 3

SELECT producto, SUM(cantidad_vendida * precio_unitario) AS total_ventas FROM ventas GROUP BY producto;

-- ejercicio 4

SELECT fecha_venta, SUM(cantidad_vendida * precio_unitario) AS total_ventas FROM ventas GROUP BY fecha_venta;

-- ejercicio 5

SELECT producto, SUM(cantidad_vendida * precio_unitario) AS total_ventas FROM ventas GROUP BY producto, precio_unitario HAVING precio_unitario > 200;

-- ejercicio 6

SELECT producto, SUM(cantidad_vendida * precio_unitario) AS total_ventas FROM ventas WHERE fecha_venta = '2023-10-01' GROUP BY producto;
