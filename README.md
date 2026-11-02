## ¿Por qué no se recomienda utilizar SELECT * en producción?

Aunque `SELECT *` es útil para explorar una tabla y conocer su estructura, no es recomendable utilizarlo habitualmente en consultas de producción.

**Rendimiento:** recupera todas las columnas, incluso aquellas que no son necesarias. Esto puede aumentar el volumen de datos transferidos y afectar la eficiencia de las consultas.

**Mantenibilidad:** si se agregan o modifican columnas en la tabla, el resultado de `SELECT *` cambia automáticamente. Esto puede afectar reportes o procesos que dependen de una estructura determinada.

Por ejemplo, si el equipo de finanzas necesita únicamente identificar clientes, productos e importes, es preferible utilizar:

```sql
SELECT customer_id, product_id, total_amount
FROM sales;
```

## ¿Por qué son importantes los alias para stakeholders no técnicos?

Los alias permiten presentar las columnas con nombres más claros y comprensibles, sin modificar la estructura original de la base de datos.

Por ejemplo, la columna `total_amount` puede mostrarse como `monto_total`, facilitando su interpretación para el equipo de finanzas:

```sql
SELECT total_amount AS monto_total
FROM sales;
```

De esta manera, los resultados son más fáciles de leer y utilizar en reportes, mejorando la comunicación entre el equipo de datos y las áreas de negocio.
