CREATE TABLE `state` (`state_name` VARCHAR(100), `population` DECIMAL(18,2), `area` DECIMAL(18,2), `country_name` VARCHAR(100), `capital` VARCHAR(100), `density` DECIMAL(18,2));
CREATE TABLE `city` (`city_name` VARCHAR(100), `population` DECIMAL(18,2), `country_name` VARCHAR(100), `state_name` VARCHAR(100));
CREATE TABLE `border_info` (`state_name` VARCHAR(100), `border` VARCHAR(100));
CREATE TABLE `highlow` (`state_name` VARCHAR(100), `highest_elevation` VARCHAR(100), `lowest_point` VARCHAR(100), `highest_point` VARCHAR(100), `lowest_elevation` VARCHAR(100));
CREATE TABLE `lake` (`lake_name` VARCHAR(100), `area` DECIMAL(18,2), `country_name` VARCHAR(100), `state_name` VARCHAR(100));
CREATE TABLE `mountain` (`mountain_name` VARCHAR(100), `mountain_altitude` DECIMAL(18,2), `country_name` VARCHAR(100), `state_name` VARCHAR(100));
CREATE TABLE `river` (`river_name` VARCHAR(100), `length` DECIMAL(18,2), `country_name` VARCHAR(100), `traverse` VARCHAR(100));
