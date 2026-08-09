

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL
) 

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date_borrowed` date NOT NULL,
  `book_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_last_name` varchar(255) NOT NULL,
  `student_first` varchar(255) NOT NULL,
  `student_course` varchar(255) NOT NULL
) 

ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);


ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`);


ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);


ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

