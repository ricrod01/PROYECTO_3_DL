CREATE TABLE `event` (`Event_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Venue` VARCHAR(100), `Name` VARCHAR(100), `Event_Attendance` DECIMAL(18,2));
CREATE TABLE `journalist` (`journalist_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Nationality` VARCHAR(100), `Age` VARCHAR(100), `Years_working` DECIMAL(18,2));
CREATE TABLE `news_report` (`journalist_ID` DECIMAL(18,2), `Event_ID` DECIMAL(18,2), `Work_Type` VARCHAR(100));
