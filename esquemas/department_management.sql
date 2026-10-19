CREATE TABLE `department` (`Department_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Creation` VARCHAR(100), `Ranking` DECIMAL(18,2), `Budget_in_Billions` DECIMAL(18,2), `Num_Employees` DECIMAL(18,2));
CREATE TABLE `head` (`head_ID` DECIMAL(18,2), `name` VARCHAR(100), `born_state` VARCHAR(100), `age` DECIMAL(18,2));
CREATE TABLE `management` (`department_ID` DECIMAL(18,2), `head_ID` DECIMAL(18,2), `temporary_acting` VARCHAR(100));
