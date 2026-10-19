CREATE TABLE `buildings` (`id` DECIMAL(18,2), `name` VARCHAR(100), `City` VARCHAR(100), `Height` DECIMAL(18,2), `Stories` DECIMAL(18,2), `Status` VARCHAR(100));
CREATE TABLE `Companies` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Headquarters` VARCHAR(100), `Industry` VARCHAR(100), `Sales_billion` DECIMAL(18,2), `Profits_billion` DECIMAL(18,2), `Assets_billion` DECIMAL(18,2), `Market_Value_billion` VARCHAR(100));
CREATE TABLE `Office_locations` (`building_id` DECIMAL(18,2), `company_id` DECIMAL(18,2), `move_in_year` DECIMAL(18,2));
