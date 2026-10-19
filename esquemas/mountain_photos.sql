CREATE TABLE `mountain` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Height` DECIMAL(18,2), `Prominence` DECIMAL(18,2), `Range` VARCHAR(100), `Country` VARCHAR(100));
CREATE TABLE `camera_lens` (`id` DECIMAL(18,2), `brand` VARCHAR(100), `name` VARCHAR(100), `focal_length_mm` DECIMAL(18,2), `max_aperture` DECIMAL(18,2));
CREATE TABLE `photos` (`id` DECIMAL(18,2), `camera_lens_id` DECIMAL(18,2), `mountain_id` DECIMAL(18,2), `color` VARCHAR(100), `name` VARCHAR(100));
