CREATE TABLE `Addresses` (`address_id` DECIMAL(18,2), `address_content` VARCHAR(100), `city` VARCHAR(100), `zip_postcode` VARCHAR(100), `state_province_county` VARCHAR(100), `country` VARCHAR(100), `other_address_details` VARCHAR(100));
CREATE TABLE `Products` (`product_id` DECIMAL(18,2), `product_details` VARCHAR(100));
CREATE TABLE `Customers` (`customer_id` DECIMAL(18,2), `payment_method` VARCHAR(100), `customer_name` VARCHAR(100), `date_became_customer` DATETIME, `other_customer_details` VARCHAR(100));
CREATE TABLE `Customer_Addresses` (`customer_id` DECIMAL(18,2), `address_id` DECIMAL(18,2), `date_address_from` DATETIME, `address_type` VARCHAR(100), `date_address_to` DATETIME);
CREATE TABLE `Customer_Contact_Channels` (`customer_id` DECIMAL(18,2), `channel_code` VARCHAR(100), `active_from_date` DATETIME, `active_to_date` DATETIME, `contact_number` VARCHAR(100));
CREATE TABLE `Customer_Orders` (`order_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `order_status` VARCHAR(100), `order_date` DATETIME, `order_details` VARCHAR(100));
CREATE TABLE `Order_Items` (`order_id` DECIMAL(18,2), `product_id` DECIMAL(18,2), `order_quantity` VARCHAR(100));
