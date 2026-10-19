CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Faculty` (`FacID` DECIMAL(18,2), `Lname` VARCHAR(100), `Fname` VARCHAR(100), `Rank` VARCHAR(100), `Sex` VARCHAR(100), `Phone` DECIMAL(18,2), `Room` VARCHAR(100), `Building` VARCHAR(100));
CREATE TABLE `Department` (`DNO` DECIMAL(18,2), `Division` VARCHAR(100), `DName` VARCHAR(100), `Room` VARCHAR(100), `Building` VARCHAR(100), `DPhone` DECIMAL(18,2));
CREATE TABLE `Member_of` (`FacID` DECIMAL(18,2), `DNO` DECIMAL(18,2), `Appt_Type` VARCHAR(100));
CREATE TABLE `Course` (`CID` VARCHAR(100), `CName` VARCHAR(100), `Credits` DECIMAL(18,2), `Instructor` DECIMAL(18,2), `Days` VARCHAR(100), `Hours` VARCHAR(100), `DNO` DECIMAL(18,2));
CREATE TABLE `Minor_in` (`StuID` DECIMAL(18,2), `DNO` DECIMAL(18,2));
CREATE TABLE `Enrolled_in` (`StuID` DECIMAL(18,2), `CID` VARCHAR(100), `Grade` VARCHAR(100));
CREATE TABLE `Gradeconversion` (`lettergrade` VARCHAR(100), `gradepoint` DECIMAL(18,2));
