-- Function: CalculateBonus
DELIMITER //
CREATE FUNCTION CalculateBonus(salary DECIMAL(10,2)) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //
DELIMITER ;

-- Function: GetGrade
DELIMITER //
CREATE FUNCTION GetGrade(marks INT) RETURNS VARCHAR(2)
DETERMINISTIC
BEGIN
    DECLARE grade VARCHAR(2);
    IF marks >= 90 THEN
        SET grade = 'A+';
    ELSEIF marks >= 75 THEN
        SET grade = 'A';
    ELSEIF marks >= 60 THEN
        SET grade = 'B';
    ELSEIF marks >= 50 THEN
        SET grade = 'C';
    ELSE
        SET grade = 'F';
    END IF;
    RETURN grade;
END //
DELIMITER ;

-- Function: SquareRoot
DELIMITER //
CREATE FUNCTION SquareRoot(num DOUBLE) RETURNS DOUBLE
DETERMINISTIC
BEGIN
    RETURN SQRT(num);
END //
DELIMITER ;
