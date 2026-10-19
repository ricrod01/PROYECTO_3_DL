CREATE TABLE `Course_Authors_and_Tutors` (`author_id` DECIMAL(18,2), `author_tutor_ATB` VARCHAR(100), `login_name` VARCHAR(100), `password` VARCHAR(100), `personal_name` VARCHAR(100), `middle_name` VARCHAR(100), `family_name` VARCHAR(100), `gender_mf` VARCHAR(100), `address_line_1` VARCHAR(100));
CREATE TABLE `Students` (`student_id` DECIMAL(18,2), `date_of_registration` DATETIME, `date_of_latest_logon` DATETIME, `login_name` VARCHAR(100), `password` VARCHAR(100), `personal_name` VARCHAR(100), `middle_name` VARCHAR(100), `family_name` VARCHAR(100));
CREATE TABLE `Subjects` (`subject_id` DECIMAL(18,2), `subject_name` VARCHAR(100));
CREATE TABLE `Courses` (`course_id` DECIMAL(18,2), `author_id` DECIMAL(18,2), `subject_id` DECIMAL(18,2), `course_name` VARCHAR(100), `course_description` VARCHAR(100));
CREATE TABLE `Student_Course_Enrolment` (`registration_id` DECIMAL(18,2), `student_id` DECIMAL(18,2), `course_id` DECIMAL(18,2), `date_of_enrolment` DATETIME, `date_of_completion` DATETIME);
CREATE TABLE `Student_Tests_Taken` (`registration_id` DECIMAL(18,2), `date_test_taken` DATETIME, `test_result` VARCHAR(100));
