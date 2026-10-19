CREATE TABLE `Customers` (`Customer_ID` DECIMAL(18,2), `Customer_name` VARCHAR(100));
CREATE TABLE `Services` (`Service_ID` DECIMAL(18,2), `Service_name` VARCHAR(100));
CREATE TABLE `Available_Policies` (`Policy_ID` DECIMAL(18,2), `policy_type_code` VARCHAR(100), `Customer_Phone` VARCHAR(100));
CREATE TABLE `Customers_Policies` (`Customer_ID` DECIMAL(18,2), `Policy_ID` DECIMAL(18,2), `Date_Opened` DATETIME, `Date_Closed` DATETIME);
CREATE TABLE `First_Notification_of_Loss` (`FNOL_ID` DECIMAL(18,2), `Customer_ID` DECIMAL(18,2), `Policy_ID` DECIMAL(18,2), `Service_ID` DECIMAL(18,2));
CREATE TABLE `Claims` (`Claim_ID` DECIMAL(18,2), `FNOL_ID` DECIMAL(18,2), `Effective_Date` DATETIME);
CREATE TABLE `Settlements` (`Settlement_ID` DECIMAL(18,2), `Claim_ID` DECIMAL(18,2), `Effective_Date` DATETIME, `Settlement_Amount` DECIMAL(18,2));
