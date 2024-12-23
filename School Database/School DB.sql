-- Create the school database
CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

-- Table 1: Students Table
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Grade VARCHAR(5),
    ContactNumber VARCHAR(15),
    Address VARCHAR(255)
);
INSERT INTO Students (FirstName, LastName, DateOfBirth, Grade, ContactNumber, Address)
VALUES
('John', 'Doe', '2005-05-15', 'A', '123-456-7890', '123 Elm St, Cityville'),
('Jane', 'Smith', '2004-03-22', 'B', '234-567-8901', '456 Oak St, Townsville'),
('Alice', 'Johnson', '2005-06-30', 'C', '345-678-9012', '789 Pine St, Villageburg'),
('Bob', 'Brown', '2004-11-02', 'B', '456-789-0123', '101 Maple St, Suburbia'),
('Charlie', 'Williams', '2005-01-10', 'A', '567-890-1234', '102 Birch St, Countryside'),
('David', 'Jones', '2005-08-12', 'B', '678-901-2345', '103 Cedar St, Cityville'),
('Eva', 'Miller', '2004-10-25', 'A', '789-012-3456', '104 Elm St, Townsville'),
('Frank', 'Davis', '2005-07-14', 'C', '890-123-4567', '105 Maple St, Villageburg'),
('Grace', 'Garcia', '2004-12-19', 'A', '901-234-5678', '106 Pine St, Suburbia'),
('Hannah', 'Martinez', '2005-02-27', 'B', '012-345-6789', '107 Birch St, Countryside');

-- Table 2: Teachers Table
CREATE TABLE IF NOT EXISTS Teachers (
    TeacherID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);
INSERT INTO Teachers (FirstName, LastName, Subject, ContactNumber, Email)
VALUES
('Mr. Robert', 'Taylor', 'Mathematics', '123-456-7890', 'robert.taylor@school.com'),
('Mrs. Linda', 'Green', 'English', '234-567-8901', 'linda.green@school.com'),
('Mr. James', 'White', 'Science', '345-678-9012', 'james.white@school.com'),
('Ms. Sarah', 'Black', 'History', '456-789-0123', 'sarah.black@school.com'),
('Dr. William', 'Blue', 'Computer Science', '567-890-1234', 'william.blue@school.com');

-- Table 3: Courses Table
CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Description TEXT,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID) ON DELETE SET NULL
);
INSERT INTO Courses (CourseName, Description, TeacherID)
VALUES
('Math 101', 'Basic Mathematics for beginners', 1),
('English 101', 'Introduction to English Literature', 2),
('Science 101', 'Basic Science concepts', 3),
('History 101', 'History of World Civilizations', 4),
('Computer Science 101', 'Introduction to programming', 5);

-- Table 4: Enrollments Table
CREATE TABLE IF NOT EXISTS Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, '2023-09-01'),
(2, 2, '2023-09-02'),
(3, 3, '2023-09-03'),
(4, 4, '2023-09-04'),
(5, 5, '2023-09-05'),
(6, 1, '2023-09-06'),
(7, 2, '2023-09-07'),
(8, 3, '2023-09-08'),
(9, 4, '2023-09-09'),
(10, 5, '2023-09-10');




