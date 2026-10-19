CREATE TABLE `storm` (`Storm_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Dates_active` VARCHAR(100), `Max_speed` DECIMAL(18,2), `Damage_millions_USD` DECIMAL(18,2), `Number_Deaths` DECIMAL(18,2));
CREATE TABLE `region` (`Region_id` DECIMAL(18,2), `Region_code` VARCHAR(100), `Region_name` VARCHAR(100));
CREATE TABLE `affected_region` (`Region_id` DECIMAL(18,2), `Storm_ID` DECIMAL(18,2), `Number_city_affected` DECIMAL(18,2));
