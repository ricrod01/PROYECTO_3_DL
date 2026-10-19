CREATE TABLE `Customer_Master_Index` (`master_customer_id` DECIMAL(18,2), `cmi_details` VARCHAR(100));
CREATE TABLE `CMI_Cross_References` (`cmi_cross_ref_id` DECIMAL(18,2), `master_customer_id` DECIMAL(18,2), `source_system_code` VARCHAR(100));
CREATE TABLE `Council_Tax` (`council_tax_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
CREATE TABLE `Business_Rates` (`business_rates_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
CREATE TABLE `Benefits_Overpayments` (`council_tax_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
CREATE TABLE `Parking_Fines` (`council_tax_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
CREATE TABLE `Rent_Arrears` (`council_tax_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
CREATE TABLE `Electoral_Register` (`electoral_register_id` DECIMAL(18,2), `cmi_cross_ref_id` DECIMAL(18,2));
