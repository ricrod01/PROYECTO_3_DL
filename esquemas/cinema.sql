CREATE TABLE `film` (`Film_ID` DECIMAL(18,2), `Rank_in_series` DECIMAL(18,2), `Number_in_season` DECIMAL(18,2), `Title` VARCHAR(100), `Directed_by` VARCHAR(100), `Original_air_date` VARCHAR(100), `Production_code` VARCHAR(100));
CREATE TABLE `cinema` (`Cinema_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Openning_year` DECIMAL(18,2), `Capacity` DECIMAL(18,2), `Location` VARCHAR(100));
CREATE TABLE `schedule` (`Cinema_ID` DECIMAL(18,2), `Film_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Show_times_per_day` DECIMAL(18,2), `Price` DECIMAL(18,2));
