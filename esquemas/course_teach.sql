CREATE TABLE `course` (`Course_ID` DECIMAL(18,2), `Staring_Date` VARCHAR(100), `Course` VARCHAR(100));
CREATE TABLE `teacher` (`Teacher_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Age` VARCHAR(100), `Hometown` VARCHAR(100));
CREATE TABLE `course_arrange` (`Course_ID` DECIMAL(18,2), `Teacher_ID` DECIMAL(18,2), `Grade` DECIMAL(18,2));
