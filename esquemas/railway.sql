CREATE TABLE `railway` (`Railway_ID` DECIMAL(18,2), `Railway` VARCHAR(100), `Builder` VARCHAR(100), `Built` VARCHAR(100), `Wheels` VARCHAR(100), `Location` VARCHAR(100), `ObjectNumber` VARCHAR(100));
CREATE TABLE `train` (`Train_ID` DECIMAL(18,2), `Train_Num` VARCHAR(100), `Name` VARCHAR(100), `From` VARCHAR(100), `Arrival` VARCHAR(100), `Railway_ID` DECIMAL(18,2));
CREATE TABLE `manager` (`Manager_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `Working_year_starts` VARCHAR(100), `Age` DECIMAL(18,2), `Level` DECIMAL(18,2));
CREATE TABLE `railway_manage` (`Railway_ID` DECIMAL(18,2), `Manager_ID` DECIMAL(18,2), `From_Year` VARCHAR(100));
