CREATE TABLE `device` (`Device_ID` DECIMAL(18,2), `Device` VARCHAR(100), `Carrier` VARCHAR(100), `Package_Version` VARCHAR(100), `Applications` VARCHAR(100), `Software_Platform` VARCHAR(100));
CREATE TABLE `shop` (`Shop_ID` DECIMAL(18,2), `Shop_Name` VARCHAR(100), `Location` VARCHAR(100), `Open_Date` VARCHAR(100), `Open_Year` DECIMAL(18,2));
CREATE TABLE `stock` (`Shop_ID` DECIMAL(18,2), `Device_ID` DECIMAL(18,2), `Quantity` DECIMAL(18,2));
