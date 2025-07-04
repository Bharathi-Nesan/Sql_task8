CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Arjun', 85),
(2, 'Meera', 67),
(3, 'Ravi', 45),
(4, 'Nisha', 92);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO Employees VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 45000);
