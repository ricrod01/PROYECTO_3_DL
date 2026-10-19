CREATE TABLE `Customers` (`customer_id` DECIMAL(18,2), `customer_name` VARCHAR(100), `customer_details` VARCHAR(100));
CREATE TABLE `Invoices` (`invoice_number` DECIMAL(18,2), `invoice_date` DATETIME, `invoice_details` VARCHAR(100));
CREATE TABLE `Orders` (`order_id` DECIMAL(18,2), `customer_id` DECIMAL(18,2), `order_status` VARCHAR(100), `date_order_placed` DATETIME, `order_details` VARCHAR(100));
CREATE TABLE `Products` (`product_id` DECIMAL(18,2), `product_name` VARCHAR(100), `product_details` VARCHAR(100));
CREATE TABLE `Order_Items` (`order_item_id` DECIMAL(18,2), `product_id` DECIMAL(18,2), `order_id` DECIMAL(18,2), `order_item_status` VARCHAR(100), `order_item_details` VARCHAR(100));
CREATE TABLE `Shipments` (`shipment_id` DECIMAL(18,2), `order_id` DECIMAL(18,2), `invoice_number` DECIMAL(18,2), `shipment_tracking_number` VARCHAR(100), `shipment_date` DATETIME, `other_shipment_details` VARCHAR(100));
CREATE TABLE `Shipment_Items` (`shipment_id` DECIMAL(18,2), `order_item_id` DECIMAL(18,2));
