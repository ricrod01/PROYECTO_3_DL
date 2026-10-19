CREATE TABLE `Ref_Characteristic_Types` (`characteristic_type_code` VARCHAR(100), `characteristic_type_description` VARCHAR(100));
CREATE TABLE `Ref_Colors` (`color_code` VARCHAR(100), `color_description` VARCHAR(100));
CREATE TABLE `Ref_Product_Categories` (`product_category_code` VARCHAR(100), `product_category_description` VARCHAR(100), `unit_of_measure` VARCHAR(100));
CREATE TABLE `Characteristics` (`characteristic_id` DECIMAL(18,2), `characteristic_type_code` VARCHAR(100), `characteristic_data_type` VARCHAR(100), `characteristic_name` VARCHAR(100), `other_characteristic_details` VARCHAR(100));
CREATE TABLE `Products` (`product_id` DECIMAL(18,2), `color_code` VARCHAR(100), `product_category_code` VARCHAR(100), `product_name` VARCHAR(100), `typical_buying_price` VARCHAR(100), `typical_selling_price` VARCHAR(100), `product_description` VARCHAR(100), `other_product_details` VARCHAR(100));
CREATE TABLE `Product_Characteristics` (`product_id` DECIMAL(18,2), `characteristic_id` DECIMAL(18,2), `product_characteristic_value` VARCHAR(100));
