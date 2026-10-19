CREATE TABLE `member` (`Member_ID` DECIMAL(18,2), `Card_Number` VARCHAR(100), `Name` VARCHAR(100), `Hometown` VARCHAR(100), `Level` DECIMAL(18,2));
CREATE TABLE `branch` (`Branch_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Open_year` VARCHAR(100), `Address_road` VARCHAR(100), `City` VARCHAR(100), `membership_amount` VARCHAR(100));
CREATE TABLE `membership_register_branch` (`Member_ID` DECIMAL(18,2), `Branch_ID` VARCHAR(100), `Register_Year` VARCHAR(100));
CREATE TABLE `purchase` (`Member_ID` DECIMAL(18,2), `Branch_ID` VARCHAR(100), `Year` VARCHAR(100), `Total_pounds` DECIMAL(18,2));
