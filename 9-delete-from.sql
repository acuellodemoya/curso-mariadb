USE metro_cdmx;

--Borrando todos los datos de una tabla
-- ¡SIGNIFICA PELIGRO!
DELETE FROM `stations_delete`;

-- Elimina los datos y reinicia la tabla, es decir,
-- los ids se reinician.
-- ¡SIGNIFICA PELIGRO!
TRUNCATE TABLE `stations_delete`;