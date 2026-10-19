CREATE TABLE `people` (`People_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `Is_Male` VARCHAR(100), `Age` DECIMAL(18,2));
CREATE TABLE `church` (`Church_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Organized_by` VARCHAR(100), `Open_Date` DECIMAL(18,2), `Continuation_of` VARCHAR(100));
CREATE TABLE `wedding` (`Church_ID` DECIMAL(18,2), `Male_ID` DECIMAL(18,2), `Female_ID` DECIMAL(18,2), `Year` DECIMAL(18,2));
