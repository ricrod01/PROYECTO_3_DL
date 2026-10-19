CREATE TABLE `school` (`School_ID` DECIMAL(18,2), `School` VARCHAR(100), `Location` VARCHAR(100), `Enrollment` DECIMAL(18,2), `Founded` DECIMAL(18,2), `Denomination` VARCHAR(100), `Boys_or_Girls` VARCHAR(100), `Day_or_Boarding` VARCHAR(100), `Year_Entered_Competition` DECIMAL(18,2), `School_Colors` VARCHAR(100));
CREATE TABLE `school_details` (`School_ID` DECIMAL(18,2), `Nickname` VARCHAR(100), `Colors` VARCHAR(100), `League` VARCHAR(100), `Class` VARCHAR(100), `Division` VARCHAR(100));
CREATE TABLE `school_performance` (`School_Id` DECIMAL(18,2), `School_Year` VARCHAR(100), `Class_A` VARCHAR(100), `Class_AA` VARCHAR(100));
CREATE TABLE `player` (`Player_ID` DECIMAL(18,2), `Player` VARCHAR(100), `Team` VARCHAR(100), `Age` DECIMAL(18,2), `Position` VARCHAR(100), `School_ID` DECIMAL(18,2));
