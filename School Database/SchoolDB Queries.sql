-- Task 1: Retrieve all students enrolled in a specific course
SELECT 
    s.StudentID, 
    s.FirstName, 
    s.LastName, 
    e.EnrollmentDate
FROM 
    Enrollments e
JOIN 
    Students s ON e.StudentID = s.StudentID
JOIN 
    Courses c ON e.CourseID = c.CourseID
WHERE 
    c.CourseName = 'Math 101';

-- Task 2: List all courses taught by a particular teacher
SELECT 
    c.CourseID, 
    c.CourseName, 
    c.Description
FROM 
    Courses c
JOIN 
    Teachers t ON c.TeacherID = t.TeacherID
WHERE 
    t.FirstName = 'Robert' AND t.LastName = 'Taylor';

-- Task 3: Find the number of students enrolled in each course
SELECT 
    c.CourseName, 
    COUNT(e.StudentID) AS NumberOfStudents
FROM 
    Courses c
LEFT JOIN 
    Enrollments e ON c.CourseID = e.CourseID
GROUP BY 
    c.CourseID;

-- Task 4: Update a student’s grade
UPDATE Students
SET Grade = 'A+'
WHERE StudentID = 1;

-- Task 5: Delete a teacher’s record
DELETE FROM Teachers
WHERE TeacherID = 1;
