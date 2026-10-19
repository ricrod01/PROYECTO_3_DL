CREATE TABLE `pilot` (`Pilot_Id` DECIMAL(18,2), `Name` VARCHAR(100), `Age` DECIMAL(18,2));
CREATE TABLE `aircraft` (`Aircraft_ID` DECIMAL(18,2), `Aircraft` VARCHAR(100), `Description` VARCHAR(100), `Max_Gross_Weight` VARCHAR(100), `Total_disk_area` VARCHAR(100), `Max_disk_Loading` VARCHAR(100));
CREATE TABLE `match` (`Round` DECIMAL(18,2), `Location` VARCHAR(100), `Country` VARCHAR(100), `Date` VARCHAR(100), `Fastest_Qualifying` VARCHAR(100), `Winning_Pilot` VARCHAR(100), `Winning_Aircraft` VARCHAR(100));
CREATE TABLE `airport` (`Airport_ID` DECIMAL(18,2), `Airport_Name` VARCHAR(100), `Total_Passengers` DECIMAL(18,2), `%_Change_2007` VARCHAR(100), `International_Passengers` DECIMAL(18,2), `Domestic_Passengers` DECIMAL(18,2), `Transit_Passengers` DECIMAL(18,2), `Aircraft_Movements` DECIMAL(18,2), `Freight_Metric_Tonnes` DECIMAL(18,2));
CREATE TABLE `airport_aircraft` (`ID` DECIMAL(18,2), `Airport_ID` DECIMAL(18,2), `Aircraft_ID` DECIMAL(18,2));
