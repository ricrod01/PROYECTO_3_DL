CREATE TABLE `manufacturer` (`Manufacturer_ID` DECIMAL(18,2), `Open_Year` DECIMAL(18,2), `Name` VARCHAR(100), `Num_of_Factories` DECIMAL(18,2), `Num_of_Shops` DECIMAL(18,2));
CREATE TABLE `furniture` (`Furniture_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Num_of_Component` DECIMAL(18,2), `Market_Rate` DECIMAL(18,2));
CREATE TABLE `furniture_manufacte` (`Manufacturer_ID` DECIMAL(18,2), `Furniture_ID` DECIMAL(18,2), `Price_in_Dollar` DECIMAL(18,2));
