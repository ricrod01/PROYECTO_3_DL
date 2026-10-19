CREATE TABLE `train` (`id` DECIMAL(18,2), `train_number` DECIMAL(18,2), `name` VARCHAR(100), `origin` VARCHAR(100), `destination` VARCHAR(100), `time` VARCHAR(100), `interval` VARCHAR(100));
CREATE TABLE `station` (`id` DECIMAL(18,2), `network_name` VARCHAR(100), `services` VARCHAR(100), `local_authority` VARCHAR(100));
CREATE TABLE `route` (`train_id` DECIMAL(18,2), `station_id` DECIMAL(18,2));
CREATE TABLE `weekly_weather` (`station_id` DECIMAL(18,2), `day_of_week` VARCHAR(100), `high_temperature` DECIMAL(18,2), `low_temperature` DECIMAL(18,2), `precipitation` DECIMAL(18,2), `wind_speed_mph` DECIMAL(18,2));
