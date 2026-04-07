USE StudentSystem;

-- 1. SELECT (View all students)
SELECT * FROM Students;

-- 2. INSERT (Add a new student)
INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate) 
VALUES ('Jane', 'Doe', 'jane.doe@email.com', '2024-01-10');

-- 3. UPDATE (Change a student's email)
UPDATE Students SET Email = 'maria.clara.updated@email.com' WHERE StudentID = 2;

-- 4. DELETE (Remove the student we just added)
DELETE FROM Students WHERE FirstName = 'Jane';

-- 5. JOIN (Show Student Name AND the Course they are enrolled in)
SELECT s.FirstName, s.LastName, c.CourseName, e.Grade
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- 6. SUBQUERY (Find students who have a Grade of 'A')
SELECT FirstName, LastName 
FROM Students 
WHERE StudentID IN (SELECT StudentID FROM Enrollments WHERE Grade = 'A');

-- 7. INDEXING COMMAND (The "speed boost")
CREATE INDEX idx_lastname ON Students(LastName);
