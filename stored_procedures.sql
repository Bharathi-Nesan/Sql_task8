-- Procedure: GetEmployeeInfo
DELIMITER //
CREATE PROCEDURE GetEmployeeInfo(IN empId INT)
BEGIN
    SELECT name, salary FROM Employees WHERE emp_id = empId;
END //
DELIMITER ;

-- Procedure: CheckResult
DELIMITER //
CREATE PROCEDURE CheckResult(IN s_id INT)
BEGIN
    DECLARE s_marks INT;
    DECLARE s_name VARCHAR(100);
    SELECT marks, name INTO s_marks, s_name FROM Students WHERE student_id = s_id;
    IF s_marks >= 50 THEN
        SELECT CONCAT(s_name, ' has passed.') AS Result;
    ELSE
        SELECT CONCAT(s_name, ' has failed.') AS Result;
    END IF;
END //
DELIMITER ;

-- Procedure: TotalStudents
DELIMITER //
CREATE PROCEDURE TotalStudents(OUT count_students INT)
BEGIN
    SELECT COUNT(*) INTO count_students FROM Students;
END //
DELIMITER ;

-- Procedure: UpdateMarks
DELIMITER //
CREATE PROCEDURE UpdateMarks(IN s_id INT, IN new_marks INT)
BEGIN
    UPDATE Students SET marks = new_marks WHERE student_id = s_id;
END //
DELIMITER ;
