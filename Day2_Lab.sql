USE StudentManagementSystem;

INSERT INTO Student VALUES
(1,'Ravi','Kumar','2002-05-12','Male','ravi@gmail.com','9876543210'),
(2,'Anita','Sharma','2001-03-22','Female','anita@gmail.com','9876543211'),
(3,'Suresh','Reddy','2002-11-10','Male','suresh@gmail.com','9876543212'),
(4,'Meena','Patel','2001-08-15','Female','meena@gmail.com','9876543213'),
(5,'Rahul','Verma','2002-01-05','Male','rahul@gmail.com','9876543214');

INSERT INTO Course VALUES
(101,'Database Systems',4),
(102,'Operating Systems',3),
(103,'Computer Networks',4),
(104,'Java Programming',3),
(105,'Web Technologies',3);

INSERT INTO Instructor VALUES
(1,'Mangali','Rakesh','rakesh@gmail.com'),
(2,'Kiran','Das','kiran@gmail.com'),
(3,'Sita','Nair','sita@gmail.com'),
(4,'Ramesh','Gupta','ramesh@gmail.com'),
(5,'Lakshmi','Iyer','lakshmi@gmail.com');

INSERT INTO Enrollment VALUES
(1,'2024-01-10',1,101,1),
(2,'2024-01-11',2,102,2),
(3,'2024-01-12',3,103,3),
(4,'2024-01-13',4,104,4),
(5,'2024-01-14',5,105,5);

INSERT INTO Score VALUES
(1,101,1,'2024-03-10',4),
(2,102,2,'2024-03-11',3),
(3,103,3,'2024-03-12',4),
(4,104,4,'2024-03-13',3),
(5,105,5,'2024-03-14',3);

INSERT INTO Feedback VALUES
(1,1,'2024-04-01','Mangali Rakesh','Friendly and good teaching'),
(2,2,'2024-04-02','Kiran Das','Clear explanation'),
(3,3,'2024-04-03','Sita Nair','Helpful sessions'),
(4,4,'2024-04-04','Ramesh Gupta','Good interaction'),
(5,5,'2024-04-05','Lakshmi Iyer','Excellent support');


SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Instructor;
SELECT * FROM Enrollment;
SELECT * FROM Score;
SELECT * FROM Feedback;
