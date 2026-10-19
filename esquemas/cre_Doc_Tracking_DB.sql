CREATE TABLE `Ref_Document_Types` (`Document_Type_Code` VARCHAR(100), `Document_Type_Name` VARCHAR(100), `Document_Type_Description` VARCHAR(100));
CREATE TABLE `Ref_Calendar` (`Calendar_Date` DATETIME, `Day_Number` DECIMAL(18,2));
CREATE TABLE `Ref_Locations` (`Location_Code` VARCHAR(100), `Location_Name` VARCHAR(100), `Location_Description` VARCHAR(100));
CREATE TABLE `Roles` (`Role_Code` VARCHAR(100), `Role_Name` VARCHAR(100), `Role_Description` VARCHAR(100));
CREATE TABLE `All_Documents` (`Document_ID` DECIMAL(18,2), `Date_Stored` DATETIME, `Document_Type_Code` VARCHAR(100), `Document_Name` VARCHAR(100), `Document_Description` VARCHAR(100), `Other_Details` VARCHAR(100));
CREATE TABLE `Employees` (`Employee_ID` DECIMAL(18,2), `Role_Code` VARCHAR(100), `Employee_Name` VARCHAR(100), `Gender_MFU` VARCHAR(100), `Date_of_Birth` DATETIME, `Other_Details` VARCHAR(100));
CREATE TABLE `Document_Locations` (`Document_ID` DECIMAL(18,2), `Location_Code` VARCHAR(100), `Date_in_Location_From` DATETIME, `Date_in_Locaton_To` DATETIME);
CREATE TABLE `Documents_to_be_Destroyed` (`Document_ID` DECIMAL(18,2), `Destruction_Authorised_by_Employee_ID` DECIMAL(18,2), `Destroyed_by_Employee_ID` DECIMAL(18,2), `Planned_Destruction_Date` DATETIME, `Actual_Destruction_Date` DATETIME, `Other_Details` VARCHAR(100));
