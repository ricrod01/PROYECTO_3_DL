CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Has_Pet` (`StuID` DECIMAL(18,2), `PetID` DECIMAL(18,2));
CREATE TABLE `Pets` (`PetID` DECIMAL(18,2), `PetType` VARCHAR(100), `pet_age` DECIMAL(18,2), `weight` DECIMAL(18,2));
