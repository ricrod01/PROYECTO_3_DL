CREATE TABLE `party` (`Party_ID` DECIMAL(18,2), `Party_Theme` VARCHAR(100), `Location` VARCHAR(100), `First_year` VARCHAR(100), `Last_year` VARCHAR(100), `Number_of_hosts` DECIMAL(18,2));
CREATE TABLE `host` (`Host_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Nationality` VARCHAR(100), `Age` VARCHAR(100));
CREATE TABLE `party_host` (`Party_ID` DECIMAL(18,2), `Host_ID` DECIMAL(18,2), `Is_Main_in_Charge` VARCHAR(100));
