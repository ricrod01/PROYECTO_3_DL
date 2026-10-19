CREATE TABLE `Customers` (`Customer_ID` DECIMAL(18,2), `Customer_Details` VARCHAR(100));
CREATE TABLE `Customer_Policies` (`Policy_ID` DECIMAL(18,2), `Customer_ID` DECIMAL(18,2), `Policy_Type_Code` VARCHAR(100), `Start_Date` DATETIME, `End_Date` DATETIME);
CREATE TABLE `Claims` (`Claim_ID` DECIMAL(18,2), `Policy_ID` DECIMAL(18,2), `Date_Claim_Made` DATETIME, `Date_Claim_Settled` DATETIME, `Amount_Claimed` DECIMAL(18,2), `Amount_Settled` DECIMAL(18,2));
CREATE TABLE `Settlements` (`Settlement_ID` DECIMAL(18,2), `Claim_ID` DECIMAL(18,2), `Date_Claim_Made` DATETIME, `Date_Claim_Settled` DATETIME, `Amount_Claimed` DECIMAL(18,2), `Amount_Settled` DECIMAL(18,2), `Customer_Policy_ID` DECIMAL(18,2));
CREATE TABLE `Payments` (`Payment_ID` DECIMAL(18,2), `Settlement_ID` DECIMAL(18,2), `Payment_Method_Code` VARCHAR(100), `Date_Payment_Made` DATETIME, `Amount_Payment` DECIMAL(18,2));
