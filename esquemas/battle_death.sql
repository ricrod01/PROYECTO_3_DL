CREATE TABLE `battle` (`id` DECIMAL(18,2), `name` VARCHAR(100), `date` VARCHAR(100), `bulgarian_commander` VARCHAR(100), `latin_commander` VARCHAR(100), `result` VARCHAR(100));
CREATE TABLE `ship` (`lost_in_battle` DECIMAL(18,2), `id` DECIMAL(18,2), `name` VARCHAR(100), `tonnage` VARCHAR(100), `ship_type` VARCHAR(100), `location` VARCHAR(100), `disposition_of_ship` VARCHAR(100));
CREATE TABLE `death` (`caused_by_ship_id` DECIMAL(18,2), `id` DECIMAL(18,2), `note` VARCHAR(100), `killed` DECIMAL(18,2), `injured` DECIMAL(18,2));
