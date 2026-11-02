-- ==========================================
-- TechStore - Consultas Básicas SELECT
-- Autor: Cecilia Barreiro
-- ==========================================

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * permite visualizar todas las columnas de una tabla.
-- Es útil para explorar los datos y conocer su estructura.
-- No se recomienda para reportes de producción porque puede
-- consultar información innecesaria y afectar el rendimiento.

SELECT * FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas

SELECT customer_id, product_id, total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders

SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
