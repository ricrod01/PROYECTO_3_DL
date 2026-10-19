CREATE TABLE `works_on` (`Essn` DECIMAL(18,2), `Pno` DECIMAL(18,2), `Hours` DECIMAL(18,2));
CREATE TABLE `employee` (`Fname` VARCHAR(100), `Minit` VARCHAR(100), `Lname` VARCHAR(100), `Ssn` DECIMAL(18,2), `Bdate` VARCHAR(100), `Address` VARCHAR(100), `Sex` VARCHAR(100), `Salary` DECIMAL(18,2), `Super_ssn` DECIMAL(18,2), `Dno` DECIMAL(18,2));
CREATE TABLE `department` (`Dname` VARCHAR(100), `Dnumber` DECIMAL(18,2), `Mgr_ssn` DECIMAL(18,2), `Mgr_start_date` VARCHAR(100));
CREATE TABLE `project` (`Pname` VARCHAR(100), `Pnumber` DECIMAL(18,2), `Plocation` VARCHAR(100), `Dnum` DECIMAL(18,2));
CREATE TABLE `dependent` (`Essn` DECIMAL(18,2), `Dependent_name` VARCHAR(100), `Sex` VARCHAR(100), `Bdate` VARCHAR(100), `Relationship` VARCHAR(100));
CREATE TABLE `dept_locations` (`Dnumber` DECIMAL(18,2), `Dlocation` VARCHAR(100));
