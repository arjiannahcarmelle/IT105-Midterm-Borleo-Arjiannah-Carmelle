# Database Normalization Report

**System:** Student Management System

## UNF (Unnormalized Form)
In a messy spreadsheet, we might have:
`StudentID, Name, Subjects (List of many), InstructorName, InstructorDept`
This is bad because one cell contains multiple values.

## 1NF (First Normal Form)
- **Action:** Each cell contains only one value. No repeating groups.
- **Result:** We separated subjects into individual rows.

## 2NF (Second Normal Form)
- **Action:** Meet 1NF and remove partial dependencies.
- **Result:** We created a separate **Courses** table. Course details now depend on `CourseID`, not the student.

## 3NF (Third Normal Form)
- **Action:** Meet 2NF and remove transitive dependencies.
- **Result:** We created an **Instructors** table. The instructor's department now depends on the `InstructorID`, which keeps the data clean.


