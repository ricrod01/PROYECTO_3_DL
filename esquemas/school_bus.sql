CREATE TABLE `driver` (`Driver_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Party` VARCHAR(100), `Home_city` VARCHAR(100), `Age` DECIMAL(18,2));
CREATE TABLE `school` (`School_ID` DECIMAL(18,2), `Grade` VARCHAR(100), `School` VARCHAR(100), `Location` VARCHAR(100), `Type` VARCHAR(100));
CREATE TABLE `school_bus` (`School_ID` DECIMAL(18,2), `Driver_ID` DECIMAL(18,2), `Years_Working` DECIMAL(18,2), `If_full_time` VARCHAR(100));
