CREATE TABLE `Addresses` (`address_id` DECIMAL(18,2), `line_1` VARCHAR(100), `line_2` VARCHAR(100), `city` VARCHAR(100), `zip_postcode` VARCHAR(100), `state_province_county` VARCHAR(100), `country` VARCHAR(100));
CREATE TABLE `People` (`person_id` DECIMAL(18,2), `first_name` VARCHAR(100), `middle_name` VARCHAR(100), `last_name` VARCHAR(100), `cell_mobile_number` VARCHAR(100), `email_address` VARCHAR(100), `login_name` VARCHAR(100), `password` VARCHAR(100));
CREATE TABLE `Students` (`student_id` DECIMAL(18,2), `student_details` VARCHAR(100));
CREATE TABLE `Courses` (`course_id` VARCHAR(100), `course_name` VARCHAR(100), `course_description` VARCHAR(100), `other_details` VARCHAR(100));
CREATE TABLE `People_Addresses` (`person_address_id` DECIMAL(18,2), `person_id` DECIMAL(18,2), `address_id` DECIMAL(18,2), `date_from` DATETIME, `date_to` DATETIME);
CREATE TABLE `Student_Course_Registrations` (`student_id` DECIMAL(18,2), `course_id` DECIMAL(18,2), `registration_date` DATETIME);
CREATE TABLE `Student_Course_Attendance` (`student_id` DECIMAL(18,2), `course_id` DECIMAL(18,2), `date_of_attendance` DATETIME);
CREATE TABLE `Candidates` (`candidate_id` DECIMAL(18,2), `candidate_details` VARCHAR(100));
CREATE TABLE `Candidate_Assessments` (`candidate_id` DECIMAL(18,2), `qualification` VARCHAR(100), `assessment_date` DATETIME, `asessment_outcome_code` VARCHAR(100));
