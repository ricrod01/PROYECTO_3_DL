CREATE TABLE `film` (`Film_ID` DECIMAL(18,2), `Title` VARCHAR(100), `Studio` VARCHAR(100), `Director` VARCHAR(100), `Gross_in_dollar` DECIMAL(18,2));
CREATE TABLE `market` (`Market_ID` DECIMAL(18,2), `Country` VARCHAR(100), `Number_cities` DECIMAL(18,2));
CREATE TABLE `film_market_estimation` (`Estimation_ID` DECIMAL(18,2), `Low_Estimate` DECIMAL(18,2), `High_Estimate` DECIMAL(18,2), `Film_ID` DECIMAL(18,2), `Type` VARCHAR(100), `Market_ID` DECIMAL(18,2), `Year` DECIMAL(18,2));
