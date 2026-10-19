CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Restaurant` (`ResID` DECIMAL(18,2), `ResName` VARCHAR(100), `Address` VARCHAR(100), `Rating` DECIMAL(18,2));
CREATE TABLE `Type_Of_Restaurant` (`ResID` DECIMAL(18,2), `ResTypeID` DECIMAL(18,2));
CREATE TABLE `Restaurant_Type` (`ResTypeID` DECIMAL(18,2), `ResTypeName` VARCHAR(100), `ResTypeDescription` VARCHAR(100));
CREATE TABLE `Visits_Restaurant` (`StuID` DECIMAL(18,2), `ResID` DECIMAL(18,2), `Time` DATETIME, `Spent` DECIMAL(18,2));
