CREATE TABLE `program` (`Program_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Origin` VARCHAR(100), `Launch` DECIMAL(18,2), `Owner` VARCHAR(100));
CREATE TABLE `channel` (`Channel_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Owner` VARCHAR(100), `Share_in_percent` DECIMAL(18,2), `Rating_in_percent` DECIMAL(18,2));
CREATE TABLE `broadcast` (`Channel_ID` DECIMAL(18,2), `Program_ID` DECIMAL(18,2), `Time_of_day` VARCHAR(100));
CREATE TABLE `broadcast_share` (`Channel_ID` DECIMAL(18,2), `Program_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Share_in_percent` DECIMAL(18,2));
