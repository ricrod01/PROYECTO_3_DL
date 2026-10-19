CREATE TABLE `repair` (`repair_ID` DECIMAL(18,2), `name` VARCHAR(100), `Launch_Date` VARCHAR(100), `Notes` VARCHAR(100));
CREATE TABLE `machine` (`Machine_ID` DECIMAL(18,2), `Making_Year` DECIMAL(18,2), `Class` VARCHAR(100), `Team` VARCHAR(100), `Machine_series` VARCHAR(100), `value_points` DECIMAL(18,2), `quality_rank` DECIMAL(18,2));
CREATE TABLE `technician` (`technician_id` DECIMAL(18,2), `Name` VARCHAR(100), `Team` VARCHAR(100), `Starting_Year` DECIMAL(18,2), `Age` DECIMAL(18,2));
CREATE TABLE `repair_assignment` (`technician_id` DECIMAL(18,2), `repair_ID` DECIMAL(18,2), `Machine_ID` DECIMAL(18,2));
