CREATE TABLE `people` (`People_ID` DECIMAL(18,2), `Age` DECIMAL(18,2), `Name` VARCHAR(100), `Nationality` VARCHAR(100), `Graduation_College` VARCHAR(100));
CREATE TABLE `company` (`Company_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Headquarters` VARCHAR(100), `Industry` VARCHAR(100), `Sales_in_Billion` DECIMAL(18,2), `Profits_in_Billion` DECIMAL(18,2), `Assets_in_Billion` DECIMAL(18,2), `Market_Value_in_Billion` DECIMAL(18,2));
CREATE TABLE `employment` (`Company_ID` DECIMAL(18,2), `People_ID` DECIMAL(18,2), `Year_working` DECIMAL(18,2));
