CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Dorm` (`dormid` DECIMAL(18,2), `dorm_name` VARCHAR(100), `student_capacity` DECIMAL(18,2), `gender` VARCHAR(100));
CREATE TABLE `Dorm_amenity` (`amenid` DECIMAL(18,2), `amenity_name` VARCHAR(100));
CREATE TABLE `Has_amenity` (`dormid` DECIMAL(18,2), `amenid` DECIMAL(18,2));
CREATE TABLE `Lives_in` (`stuid` DECIMAL(18,2), `dormid` DECIMAL(18,2), `room_number` DECIMAL(18,2));
