-- Crear la base de datos
CREATE DATABASE metro_cdmx;

-- Crear usuario
CREATE USER 'acuello'@'localhost' IDENTIFIED BY 'password';

-- Eliminar usuario
DROP USER 'acuello'@'localhost';

-- Conceder permisos al usuario
GRANT ALL PRIVILEGES ON *.* TO 'acuello'@'localhost';

-- Activar privilegios
FLUSH PRIVILEGES;