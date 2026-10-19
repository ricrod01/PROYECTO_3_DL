CREATE TABLE `Activity` (`actid` DECIMAL(18,2), `activity_name` VARCHAR(100));
CREATE TABLE `Participates_in` (`stuid` DECIMAL(18,2), `actid` DECIMAL(18,2));
CREATE TABLE `Faculty_Participates_in` (`FacID` DECIMAL(18,2), `actid` DECIMAL(18,2));
CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Faculty` (`FacID` DECIMAL(18,2), `Lname` VARCHAR(100), `Fname` VARCHAR(100), `Rank` VARCHAR(100), `Sex` VARCHAR(100), `Phone` DECIMAL(18,2), `Room` VARCHAR(100), `Building` VARCHAR(100));
