CREATE TABLE `Customers` (`Customer_ID` DECIMAL(18,2), `Customer_Details` VARCHAR(100));
CREATE TABLE `Staff` (`Staff_ID` DECIMAL(18,2), `Staff_Details` VARCHAR(100));
CREATE TABLE `Policies` (`Policy_ID` DECIMAL(18,2), `Customer_ID` DECIMAL(18,2), `Policy_Type_Code` VARCHAR(100), `Start_Date` DATETIME, `End_Date` DATETIME);
CREATE TABLE `Claim_Headers` (`Claim_Header_ID` DECIMAL(18,2), `Claim_Status_Code` VARCHAR(100), `Claim_Type_Code` VARCHAR(100), `Policy_ID` DECIMAL(18,2), `Date_of_Claim` DATETIME, `Date_of_Settlement` DATETIME, `Amount_Claimed` DECIMAL(18,2), `Amount_Piad` DECIMAL(18,2));
CREATE TABLE `Claims_Documents` (`Claim_ID` DECIMAL(18,2), `Document_Type_Code` VARCHAR(100), `Created_by_Staff_ID` DECIMAL(18,2), `Created_Date` DECIMAL(18,2));
CREATE TABLE `Claims_Processing_Stages` (`Claim_Stage_ID` DECIMAL(18,2), `Next_Claim_Stage_ID` DECIMAL(18,2), `Claim_Status_Name` VARCHAR(100), `Claim_Status_Description` VARCHAR(100));
CREATE TABLE `Claims_Processing` (`Claim_Processing_ID` DECIMAL(18,2), `Claim_ID` DECIMAL(18,2), `Claim_Outcome_Code` VARCHAR(100), `Claim_Stage_ID` DECIMAL(18,2), `Staff_ID` DECIMAL(18,2));
