USE Academy_4;
Go

SELECT COUNT(*) AS Count_of_teachers
FROM Teachers
WHERE Department = 'Software Development';

SELECT COUNT(*) AS Count_of_lectures
FROM Lectures
WHERE Lecturer = 'Dave McQueen';

SELECT COUNT(*) AS Count_of_sessions
FROM Classes
WHERE Room = 'D201';

SELECT Room, COUNT(*) AS Count_of_lectures
FROM Classes
GROUP BY Room;

SELECT COUNT(DISTINCT StudentID) AS Count_of_students
FROM Enrollments
WHERE CourseID IN (
    SELECT CourseID
    FROM Classes
    WHERE Lecturer = 'Jack Underhill'
);

SELECT AVG(Salary) AS Average_salary
FROM Teachers
WHERE Department = 'Computer Science';

SELECT MIN(StudentsCount) AS Min_students, MAX(StudentsCount) AS Max_students
FROM (
    SELECT GroupID, COUNT(DISTINCT StudentID) AS StudentsCount
    FROM Enrollments
    GROUP BY GroupID
) AS GroupStats;

SELECT Department, AVG(Budget) AS Average_budget
FROM Departments
GROUP BY Department;

SELECT CONCAT(FirstName, ' ', LastName) AS Full_name, COUNT(DISTINCT SubjectID) AS Count_of_subjects
FROM Teachers
JOIN Lectures ON Teachers.TeacherID = Lectures.TeacherID
GROUP BY Teachers.TeacherID;

SELECT DayOfWeek, COUNT(*) AS Count_of_lectures
FROM Lectures
GROUP BY DayOfWeek;

SELECT Room, COUNT(DISTINCT Department) AS Count_of_departments
FROM Classes
JOIN Teachers ON Classes.Lecturer = Teachers.TeacherID
GROUP BY Room;

SELECT Faculty, COUNT(DISTINCT SubjectID) AS Count_of_subjects
FROM Departments
JOIN Lectures ON Departments.DepartmentID = Lectures.DepartmentID
GROUP BY Faculty;

SELECT Lecturer, Room, COUNT(*) AS Count_of_lectures
FROM Classes
GROUP BY Lecturer, Room;
