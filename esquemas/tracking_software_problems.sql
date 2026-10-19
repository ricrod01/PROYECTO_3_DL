CREATE TABLE `Problem_Category_Codes` (`problem_category_code` VARCHAR(100), `problem_category_description` VARCHAR(100));
CREATE TABLE `Problem_Log` (`problem_log_id` DECIMAL(18,2), `assigned_to_staff_id` DECIMAL(18,2), `problem_id` DECIMAL(18,2), `problem_category_code` VARCHAR(100), `problem_status_code` VARCHAR(100), `log_entry_date` DATETIME, `log_entry_description` VARCHAR(100), `log_entry_fix` VARCHAR(100), `other_log_details` VARCHAR(100));
CREATE TABLE `Problem_Status_Codes` (`problem_status_code` VARCHAR(100), `problem_status_description` VARCHAR(100));
CREATE TABLE `Product` (`product_id` DECIMAL(18,2), `product_name` VARCHAR(100), `product_details` VARCHAR(100));
CREATE TABLE `Staff` (`staff_id` DECIMAL(18,2), `staff_first_name` VARCHAR(100), `staff_last_name` VARCHAR(100), `other_staff_details` VARCHAR(100));
CREATE TABLE `Problems` (`problem_id` DECIMAL(18,2), `product_id` DECIMAL(18,2), `closure_authorised_by_staff_id` DECIMAL(18,2), `reported_by_staff_id` DECIMAL(18,2), `date_problem_reported` DATETIME, `date_problem_closed` DATETIME, `problem_description` VARCHAR(100), `other_problem_details` VARCHAR(100));
