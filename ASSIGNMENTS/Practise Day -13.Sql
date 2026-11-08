USE DA8;


CREATE TABLE Students (student_id INT PRIMARY KEY, name VARCHAR(100), age INT);
CREATE TABLE Courses (course_id INT PRIMARY KEY, course_name VARCHAR(100));
CREATE TABLE Enrollments (enrollment_id INT PRIMARY KEY, student_id INT, course_id INT);
 
INSERT INTO Students VALUES
(1, 'Arjun', 20), (2, 'Bhavana', 21), (3, 'Charan', 22), (4, 'Divya', 20),
(5, 'Eswar', 23), (6, 'Farhan', 21), (7, 'Gowri', 22);
 
INSERT INTO Courses VALUES
(101, 'Mathematics'), (102, 'Physics'), (103, 'Biology'), (104, 'Chemistry'), (105, 'Computer Science');
 
INSERT INTO Enrollments VALUES
(1, 1, 101), (2, 2, 101), (3, 2, 102), (4, 3, 103),
(5, 4, 101), (6, 5, 104), (7, 1, 102), (8, 6, 105);
