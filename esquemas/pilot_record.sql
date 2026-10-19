CREATE TABLE `aircraft` (`Aircraft_ID` DECIMAL(18,2), `Order_Year` DECIMAL(18,2), `Manufacturer` VARCHAR(100), `Model` VARCHAR(100), `Fleet_Series` VARCHAR(100), `Powertrain` VARCHAR(100), `Fuel_Propulsion` VARCHAR(100));
CREATE TABLE `pilot` (`Pilot_ID` DECIMAL(18,2), `Pilot_name` VARCHAR(100), `Rank` DECIMAL(18,2), `Age` DECIMAL(18,2), `Nationality` VARCHAR(100), `Position` VARCHAR(100), `Join_Year` DECIMAL(18,2), `Team` VARCHAR(100));
CREATE TABLE `pilot_record` (`Record_ID` DECIMAL(18,2), `Pilot_ID` DECIMAL(18,2), `Aircraft_ID` DECIMAL(18,2), `Date` VARCHAR(100));
