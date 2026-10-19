CREATE TABLE `bank` (`branch_ID` DECIMAL(18,2), `bname` VARCHAR(100), `no_of_customers` DECIMAL(18,2), `city` VARCHAR(100), `state` VARCHAR(100));
CREATE TABLE `customer` (`cust_ID` VARCHAR(100), `cust_name` VARCHAR(100), `acc_type` VARCHAR(100), `acc_bal` DECIMAL(18,2), `no_of_loans` DECIMAL(18,2), `credit_score` DECIMAL(18,2), `branch_ID` DECIMAL(18,2), `state` VARCHAR(100));
CREATE TABLE `loan` (`loan_ID` VARCHAR(100), `loan_type` VARCHAR(100), `cust_ID` VARCHAR(100), `branch_ID` VARCHAR(100), `amount` DECIMAL(18,2));
