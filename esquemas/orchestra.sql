CREATE TABLE `conductor` (`Conductor_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Age` DECIMAL(18,2), `Nationality` VARCHAR(100), `Year_of_Work` DECIMAL(18,2));
CREATE TABLE `orchestra` (`Orchestra_ID` DECIMAL(18,2), `Orchestra` VARCHAR(100), `Conductor_ID` DECIMAL(18,2), `Record_Company` VARCHAR(100), `Year_of_Founded` DECIMAL(18,2), `Major_Record_Format` VARCHAR(100));
CREATE TABLE `performance` (`Performance_ID` DECIMAL(18,2), `Orchestra_ID` DECIMAL(18,2), `Type` VARCHAR(100), `Date` VARCHAR(100), `Official_ratings_(millions)` DECIMAL(18,2), `Weekly_rank` VARCHAR(100), `Share` VARCHAR(100));
CREATE TABLE `show` (`Show_ID` DECIMAL(18,2), `Performance_ID` DECIMAL(18,2), `If_first_show` VARCHAR(100), `Result` VARCHAR(100), `Attendance` DECIMAL(18,2));
