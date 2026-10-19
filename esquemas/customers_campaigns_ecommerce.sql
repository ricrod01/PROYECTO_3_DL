CREATE TABLE `Premises` (`premise_id` DECIMAL(18,2), `premises_type` VARCHAR(100), `premise_details` VARCHAR(100));
CREATE TABLE `Products` (`product_id` DECIMAL(18,2), `product_category` VARCHAR(100), `product_name` VARCHAR(100));
CREATE TABLE `Customers` (`customer_id` DECIMAL(18,2), `payment_method` VARCHAR(100), `customer_name` VARCHAR(100), `customer_phone` VARCHAR(100), `customer_email` VARCHAR(100), `customer_address` VARCHAR(100), `customer_login` VARCHAR(100), `customer_password` VARCHAR(100));
CREATE TABLE `Mailshot_Campaigns` (`mailshot_id` DECIMAL(18,2), `product_category` VARCHAR(100), `mailshot_name` VARCHAR(100), `mailshot_start_date` DATETIME, `mailshot_end_date` DATETIME);
CREATE TABLE `Customer_Addresses` (`customer_id` DECIMAL(18,2), `premise_id` DECIMAL(18,2), `date_address_from` DATETIME, `address_type_code` VARCHAR(100), `date_address_to` DATETIME);
CREATE TABLE `Customer_Orders` (`order_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `order_status_code` VARCHAR(100), `shipping_method_code` VARCHAR(100), `order_placed_datetime` DATETIME, `order_delivered_datetime` DATETIME, `order_shipping_charges` VARCHAR(100));
CREATE TABLE `Mailshot_Customers` (`mailshot_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `outcome_code` VARCHAR(100), `mailshot_customer_date` DATETIME);
CREATE TABLE `Order_Items` (`item_id` DECIMAL(18,2), `order_item_status_code` VARCHAR(100), `order_id` DECIMAL(18,2), `product_id` DECIMAL(18,2), `item_status_code` VARCHAR(100), `item_delivered_datetime` DATETIME, `item_order_quantity` VARCHAR(100));
