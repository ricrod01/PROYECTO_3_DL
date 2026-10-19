CREATE TABLE `phone` (`Name` VARCHAR(100), `Phone_ID` DECIMAL(18,2), `Memory_in_G` DECIMAL(18,2), `Carrier` VARCHAR(100), `Price` DECIMAL(18,2));
CREATE TABLE `market` (`Market_ID` DECIMAL(18,2), `District` VARCHAR(100), `Num_of_employees` DECIMAL(18,2), `Num_of_shops` DECIMAL(18,2), `Ranking` DECIMAL(18,2));
CREATE TABLE `phone_market` (`Market_ID` DECIMAL(18,2), `Phone_ID` VARCHAR(100), `Num_of_stock` DECIMAL(18,2));
