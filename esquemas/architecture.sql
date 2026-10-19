CREATE TABLE `architect` (`id` VARCHAR(100), `name` VARCHAR(100), `nationality` VARCHAR(100), `gender` VARCHAR(100));
CREATE TABLE `bridge` (`architect_id` DECIMAL(18,2), `id` DECIMAL(18,2), `name` VARCHAR(100), `location` VARCHAR(100), `length_meters` DECIMAL(18,2), `length_feet` DECIMAL(18,2));
CREATE TABLE `mill` (`architect_id` DECIMAL(18,2), `id` DECIMAL(18,2), `location` VARCHAR(100), `name` VARCHAR(100), `type` VARCHAR(100), `built_year` DECIMAL(18,2), `notes` VARCHAR(100));
