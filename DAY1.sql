CREATE DATABASE DAY1
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(30),
LastName VARCHAR(40),
DateOfBirth DATE,
Gender VARCHAR(10),
Email VARCHAR(100),
Phone VARCHAR(15)
);


CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseTitle VARCHAR(100),
Credits INT
);


CREATE TABLE Instructor (
InstructorID INT PRIMARY KEY,
FirstName VARCHAR(20),
LastName VARCHAR(30),
Email VARCHAR(100)
);


CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
EnrollmentDate DATE,
StudentID INT FOREIGN KEY,
CourseID INT FOREIGN KEY,
InstructorID INT FOREIGN KEY ,
);


CREATE TABLE Score (
ScoreID INT PRIMARY KEY,
CourseID INT FOREIGN KEY,
StudentID INT FOREIGN KEY,
DateOfExam DATE,
CreditObtained INT,
);


CREATE TABLE Feedback (
FeedbackID INT PRIMARY KEY,
StudentID INT FOREIGN KEY,
Date DATE,
InstructorName VARCHAR(30),
Feedback TEXT,
);



