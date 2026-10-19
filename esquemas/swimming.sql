CREATE TABLE `swimmer` (`ID` DECIMAL(18,2), `name` VARCHAR(100), `Nationality` VARCHAR(100), `meter_100` DECIMAL(18,2), `meter_200` VARCHAR(100), `meter_300` VARCHAR(100), `meter_400` VARCHAR(100), `meter_500` VARCHAR(100), `meter_600` VARCHAR(100), `meter_700` VARCHAR(100), `Time` VARCHAR(100));
CREATE TABLE `stadium` (`ID` DECIMAL(18,2), `name` VARCHAR(100), `Capacity` DECIMAL(18,2), `City` VARCHAR(100), `Country` VARCHAR(100), `Opening_year` DECIMAL(18,2));
CREATE TABLE `event` (`ID` DECIMAL(18,2), `Name` VARCHAR(100), `Stadium_ID` DECIMAL(18,2), `Year` VARCHAR(100));
CREATE TABLE `record` (`ID` DECIMAL(18,2), `Result` VARCHAR(100), `Swimmer_ID` DECIMAL(18,2), `Event_ID` DECIMAL(18,2));
