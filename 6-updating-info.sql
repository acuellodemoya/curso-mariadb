USE metro-cdmx;

-- Actualizando registros
UPDATE `stations` 
SET name = "Lázaro Cárdenas", updated_at = CURRENT_TIMESTAMP
WHERE id = 1;

UPDATE `stations`
SET name = "Ferrería", updated_at = CURRENT_TIMESTAMP
WHERE id = 2;

UPDATE `stations`
SET name = "Pantitlán", updated_at = CURRENT_TIMESTAMP
WHERE id = 3;

UPDATE `stations`
SET name = "Tacuba", updated_at = CURRENT_TIMESTAMP
WHERE id = 4;

UPDATE `stations`
SET name = "Martín Carrera", updated_at = CURRENT_TIMESTAMP
WHERE id = 5;
