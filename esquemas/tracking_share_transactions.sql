CREATE TABLE `Investors` (`investor_id` DECIMAL(18,2), `Investor_details` VARCHAR(100));
CREATE TABLE `Lots` (`lot_id` DECIMAL(18,2), `investor_id` DECIMAL(18,2), `lot_details` VARCHAR(100));
CREATE TABLE `Ref_Transaction_Types` (`transaction_type_code` VARCHAR(100), `transaction_type_description` VARCHAR(100));
CREATE TABLE `Transactions` (`transaction_id` DECIMAL(18,2), `investor_id` DECIMAL(18,2), `transaction_type_code` VARCHAR(100), `date_of_transaction` DATETIME, `amount_of_transaction` DECIMAL(18,2), `share_count` VARCHAR(100), `other_details` VARCHAR(100));
CREATE TABLE `Sales` (`sales_transaction_id` DECIMAL(18,2), `sales_details` VARCHAR(100));
CREATE TABLE `Purchases` (`purchase_transaction_id` DECIMAL(18,2), `purchase_details` VARCHAR(100));
CREATE TABLE `Transactions_Lots` (`transaction_id` DECIMAL(18,2), `lot_id` DECIMAL(18,2));
