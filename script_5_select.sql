USE Academy_5;
GO

SELECT DISTINCT LectureRooms.Name
FROM Lectures
JOIN Teachers ON Lectures.TeacherId = Teachers.Id
JOIN LectureRooms ON Lectures.LectureRoomId = LectureRooms.Id
WHERE Teachers.Name = 'Edward' AND Teachers.Surname = 'Hopper';

SELECT DISTINCT LectureRooms.Name
FROM Lectures
JOIN Teachers ON Lectures.TeacherId = Teachers.Id
JOIN LectureRooms ON Lectures.LectureRoomId = LectureRooms.Id
WHERE Teachers.Name = 'Edward' AND Teachers.Surname = 'Hopper';

SELECT DISTINCT Subjects.Name
FROM Lectures
JOIN Teachers ON Lectures.TeacherId = Teachers.Id
JOIN Subjects ON Lectures.SubjectId = Subjects.Id
WHERE Teachers.Name = 'Alex' AND Teachers.Surname = 'Carmack';

SELECT DISTINCT Teachers.Surname
FROM Lectures
JOIN Teachers ON Lectures.TeacherId = Teachers.Id
WHERE DAYOFWEEK(Lectures.Date) != 2;

SELECT DISTINCT CONCAT(LectureRooms.Name, ' (Корпус ', LectureRooms.Building, ')') AS Room
FROM LectureRooms
LEFT JOIN Lectures ON LectureRooms.Id = Lectures.LectureRoomId
WHERE DAYOFWEEK(Lectures.Date) = 4
    AND WEEK(Lectures.Date) = 2
    AND HOUR(Lectures.Date) = 3;

SELECT DISTINCT CONCAT(Teachers.Name, ' ', Teachers.Surname) AS FullName
FROM Teachers
JOIN Departments ON Teachers.Id = Departments.HeadId
JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = 'Computer Science'
    AND Teachers.Id NOT IN (
        SELECT DISTINCT Curators.TeacherId
        FROM Curators
        JOIN GroupsCurators ON Curators.Id = GroupsCurators.CuratorId
        JOIN Groups ON GroupsCurators.GroupId = Groups.Id
        JOIN Departments ON Groups.DepartmentId = Departments.Id
        WHERE Departments.Name = 'Software Development'
    );

SELECT DISTINCT Building
FROM (
    SELECT Building FROM Faculties
    UNION
    SELECT Building FROM Departments
    UNION
    SELECT Building FROM LectureRooms
) AS AllBuildings;

SELECT DISTINCT CONCAT(Teachers.Name, ' ', Teachers.Surname) AS FullName
FROM Teachers
WHERE Teachers.Id IN (
    SELECT DeanId FROM Faculties
    UNION
    SELECT HeadId FROM Departments
    UNION
    SELECT TeacherId FROM Curators

SELECT DISTINCT day_of_week
FROM your_schedule_table
WHERE room_number IN ('A311', 'A104');
