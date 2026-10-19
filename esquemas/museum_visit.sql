CREATE TABLE `museum` (`Museum_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Num_of_Staff` DECIMAL(18,2), `Open_Year` VARCHAR(100));
CREATE TABLE `visitor` (`ID` DECIMAL(18,2), `Name` VARCHAR(100), `Level_of_membership` DECIMAL(18,2), `Age` DECIMAL(18,2));
CREATE TABLE `visit` (`Museum_ID` DECIMAL(18,2), `visitor_ID` VARCHAR(100), `Num_of_Ticket` DECIMAL(18,2), `Total_spent` DECIMAL(18,2));
