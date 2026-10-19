CREATE TABLE `Ref_Document_Types` (`Document_Type_Code` VARCHAR(100), `Document_Type_Name` VARCHAR(100), `Document_Type_Description` VARCHAR(100));
CREATE TABLE `Ref_Budget_Codes` (`Budget_Type_Code` VARCHAR(100), `Budget_Type_Description` VARCHAR(100));
CREATE TABLE `Projects` (`Project_ID` DECIMAL(18,2), `Project_Details` VARCHAR(100));
CREATE TABLE `Documents` (`Document_ID` DECIMAL(18,2), `Document_Type_Code` VARCHAR(100), `Project_ID` DECIMAL(18,2), `Document_Date` DATETIME, `Document_Name` VARCHAR(100), `Document_Description` VARCHAR(100), `Other_Details` VARCHAR(100));
CREATE TABLE `Statements` (`Statement_ID` DECIMAL(18,2), `Statement_Details` VARCHAR(100));
CREATE TABLE `Documents_with_Expenses` (`Document_ID` DECIMAL(18,2), `Budget_Type_Code` VARCHAR(100), `Document_Details` VARCHAR(100));
CREATE TABLE `Accounts` (`Account_ID` DECIMAL(18,2), `Statement_ID` DECIMAL(18,2), `Account_Details` VARCHAR(100));
