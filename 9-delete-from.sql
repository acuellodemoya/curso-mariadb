USE metro_cdmx;

--Borrando todos los datos de una tabla
-- ┬íSIGNIFICA PELIGRO!
DELETE FROM `stations_delete`;

-- Elimina los datos y reinicia la tabla, es decir,
-- los ids se reinician.
-- ┬íSIGNIFICA PELIGRO!
TRUNCATE TABLE `stations_delete`;