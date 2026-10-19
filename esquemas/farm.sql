CREATE TABLE `city` (`City_ID` DECIMAL(18,2), `Official_Name` VARCHAR(100), `Status` VARCHAR(100), `Area_km_2` DECIMAL(18,2), `Population` DECIMAL(18,2), `Census_Ranking` VARCHAR(100));
CREATE TABLE `farm` (`Farm_ID` DECIMAL(18,2), `Year` DECIMAL(18,2), `Total_Horses` DECIMAL(18,2), `Working_Horses` DECIMAL(18,2), `Total_Cattle` DECIMAL(18,2), `Oxen` DECIMAL(18,2), `Bulls` DECIMAL(18,2), `Cows` DECIMAL(18,2), `Pigs` DECIMAL(18,2), `Sheep_and_Goats` DECIMAL(18,2));
CREATE TABLE `farm_competition` (`Competition_ID` DECIMAL(18,2), `Year` DECIMAL(18,2), `Theme` VARCHAR(100), `Host_city_ID` DECIMAL(18,2), `Hosts` VARCHAR(100));
CREATE TABLE `competition_record` (`Competition_ID` DECIMAL(18,2), `Farm_ID` DECIMAL(18,2), `Rank` DECIMAL(18,2));
