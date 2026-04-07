USE StudentSystem;

-- 1. Insert 10 Instructors
INSERT INTO Instructors (FirstName, LastName, Email, Department) VALUES
('Ricardo', 'Dalisay', 'r.dalisay@email.com', 'Information Technology'),
('Liza', 'Soberano', 'l.soberano@email.com', 'Computer Science'),
('Enrique', 'Gil', 'e.gil@email.com', 'Mathematics'),
('Catriona', 'Gray', 'c.gray@email.com', 'General Education'),
('Pia', 'Wurtzbach', 'p.wurtzbach@email.com', 'Information Technology'),
('Jose', 'Rizal', 'j.rizal@email.com', 'History'),
('Andres', 'Bonifacio', 'a.bonifacio@email.com', 'Physical Education'),
('Melchora', 'Aquino', 'm.aquino@email.com', 'Nursing'),
('Juan', 'Luna', 'j.luna@email.com', 'Fine Arts'),
('Miriam', 'Defensor', 'm.defensor@email.com', 'Political Science');

-- 2. Insert 10 Courses
INSERT INTO Courses (CourseCode, CourseName, Credits, InstructorID) VALUES
('IT101', 'Introduction to Computing', 3, 1),
('IT105', 'Database Management', 3, 2),
('MATH11', 'College Algebra', 3, 3),
('GE101', 'Understanding the Self', 3, 4),
('IT201', 'Web Development', 3, 5),
('HIST1', 'Philippine History', 3, 6),
('PE1', 'Physical Fitness', 2, 7),
('NS101', 'Anatomy and Physiology', 3, 8),
('ART1', 'Introduction to Painting', 3, 9),
('POLSC1', 'Philippine Constitution', 3, 10);

-- 3. Insert 10 Students
INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate) VALUES
('Juan', 'Dela Cruz', 'juan.d@student.com', '2023-08-01'),
('Maria', 'Santos', 'maria.s@student.com', '2023-08-02'),
('Pedro', 'Penduko', 'pedro.p@student.com', '2023-08-03'),
('Elena', 'Adarna', 'elena.a@student.com', '2023-08-04'),
('Fernando', 'Poe', 'fpj@student.com', '2023-08-05'),
('Vilma', 'Santos', 'vilma.s@student.com', '2023-08-06'),
('Nora', 'Aunor', 'nora.a@student.com', '2023-08-07'),
('Dolphy', 'Quizon', 'dolphy.q@student.com', '2023-08-08'),
('Gloria', 'Romero', 'gloria.r@student.com', '2023-08-09'),
('Eddie', 'Garcia', 'eddie.g@student.com', '2023-08-10');

-- 4. Insert 10 Enrollments (Linking Students to Courses)
INSERT INTO Enrollments (StudentID, CourseID, Grade) VALUES
(1, 1, 'A'),
(2, 2, 'B+'),
(3, 3, 'A-'),
(4, 4, 'B'),
(5, 5, 'C+'),
(6, 6, 'A'),
(7, 7, 'B'),
(8, 8, 'B-'),
(9, 9, 'A'),
(10, 10, 'B+');


