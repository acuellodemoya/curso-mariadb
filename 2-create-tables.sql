-- Crear tablas

USE metro_cdmx;

CREATE TABLE `lines` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)

CREATE TABLE `stations` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    -- `icon` VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)

CREATE TABLE `trains` (
    `serial_number` VARCHAR(10) NOT NULL,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (serial_number),
    --CONSTRAINT `trains_line_id_foreign`
    --FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
)


-- Agregar Foreign key a trains
ALTER TABLE `trains` 
    ADD `line_id` BIGINT(20) UNSIGNED NOT NULL,
    ADD CONSTRAINT `trains_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)

CREATE TABLE `stations_delete` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    -- `icon` VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
)


-- Permitir caracteres
DEFAULT CHARSET=utf8mb4

-- Como nuestra DB compara nuestros registros con datos nuevos
COLLATE=utf8mb4_unicode_ci;

