CREATE TABLE `Addresses` (`address_id` DECIMAL(18,2), `line_1_number_building` VARCHAR(100), `city` VARCHAR(100), `zip_postcode` VARCHAR(100), `state_province_county` VARCHAR(100), `country` VARCHAR(100));
CREATE TABLE `Products` (`product_id` DECIMAL(18,2), `product_type_code` VARCHAR(100), `product_name` VARCHAR(100), `product_price` DECIMAL(18,2));
CREATE TABLE `Customers` (`customer_id` DECIMAL(18,2), `payment_method_code` VARCHAR(100), `customer_number` VARCHAR(100), `customer_name` VARCHAR(100), `customer_address` VARCHAR(100), `customer_phone` VARCHAR(100), `customer_email` VARCHAR(100));
CREATE TABLE `Contacts` (`contact_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `gender` VARCHAR(100), `first_name` VARCHAR(100), `last_name` VARCHAR(100), `contact_phone` VARCHAR(100));
CREATE TABLE `Customer_Address_History` (`customer_id` DECIMAL(18,2), `address_id` DECIMAL(18,2), `date_from` DATETIME, `date_to` DATETIME);
CREATE TABLE `Customer_Orders` (`order_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `order_date` DATETIME, `order_status_code` VARCHAR(100));
CREATE TABLE `Order_Items` (`order_item_id` DECIMAL(18,2), `order_id` DECIMAL(18,2), `product_id` DECIMAL(18,2), `order_quantity` VARCHAR(100));
