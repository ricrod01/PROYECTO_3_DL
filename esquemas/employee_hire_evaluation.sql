CREATE TABLE `employee` (`Employee_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Age` DECIMAL(18,2), `City` VARCHAR(100));
CREATE TABLE `shop` (`Shop_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Location` VARCHAR(100), `District` VARCHAR(100), `Number_products` DECIMAL(18,2), `Manager_name` VARCHAR(100));
CREATE TABLE `hiring` (`Shop_ID` DECIMAL(18,2), `Employee_ID` DECIMAL(18,2), `Start_from` VARCHAR(100), `Is_full_time` VARCHAR(100));
CREATE TABLE `evaluation` (`Employee_ID` VARCHAR(100), `Year_awarded` VARCHAR(100), `Bonus` DECIMAL(18,2));
