CREATE TABLE `member` (`Member_ID` VARCHAR(100), `Name` VARCHAR(100), `Nationality` VARCHAR(100), `Role` VARCHAR(100));
CREATE TABLE `performance` (`Performance_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Host` VARCHAR(100), `Location` VARCHAR(100), `Attendance` DECIMAL(18,2));
CREATE TABLE `member_attendance` (`Member_ID` DECIMAL(18,2), `Performance_ID` DECIMAL(18,2), `Num_of_Pieces` DECIMAL(18,2));
