CREATE TABLE `Breeds` (`breed_code` VARCHAR(100), `breed_name` VARCHAR(100));
CREATE TABLE `Charges` (`charge_id` DECIMAL(18,2), `charge_type` VARCHAR(100), `charge_amount` DECIMAL(18,2));
CREATE TABLE `Sizes` (`size_code` VARCHAR(100), `size_description` VARCHAR(100));
CREATE TABLE `Treatment_Types` (`treatment_type_code` VARCHAR(100), `treatment_type_description` VARCHAR(100));
CREATE TABLE `Owners` (`owner_id` DECIMAL(18,2), `first_name` VARCHAR(100), `last_name` VARCHAR(100), `street` VARCHAR(100), `city` VARCHAR(100), `state` VARCHAR(100), `zip_code` VARCHAR(100), `email_address` VARCHAR(100), `home_phone` VARCHAR(100), `cell_number` VARCHAR(100));
CREATE TABLE `Dogs` (`dog_id` DECIMAL(18,2), `owner_id` DECIMAL(18,2), `abandoned_yn` VARCHAR(100), `breed_code` VARCHAR(100), `size_code` VARCHAR(100), `name` VARCHAR(100), `age` VARCHAR(100), `date_of_birth` DATETIME, `gender` VARCHAR(100), `weight` VARCHAR(100), `date_arrived` DATETIME, `date_adopted` DATETIME, `date_departed` DATETIME);
CREATE TABLE `Professionals` (`professional_id` DECIMAL(18,2), `role_code` VARCHAR(100), `first_name` VARCHAR(100), `street` VARCHAR(100), `city` VARCHAR(100), `state` VARCHAR(100), `zip_code` VARCHAR(100), `last_name` VARCHAR(100), `email_address` VARCHAR(100), `home_phone` VARCHAR(100), `cell_number` VARCHAR(100));
CREATE TABLE `Treatments` (`treatment_id` DECIMAL(18,2), `dog_id` DECIMAL(18,2), `professional_id` DECIMAL(18,2), `treatment_type_code` VARCHAR(100), `date_of_treatment` DATETIME, `cost_of_treatment` DECIMAL(18,2));
