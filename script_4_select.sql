USE Academy3;
GO

SELECT t1.Name, t1.Surname, t2.Name
FROM Teachers t1
CROSS JOIN Groups t2;

SELECT f.Name
FROM Faculties f
INNER JOIN Departments d ON f.Id = d.FacultyId
WHERE d.Financing > f.Financing;

SELECT c.Surname, g.Name
FROM Curators c
INNER JOIN GroupsCurators gc ON c.Id = gc.CuratorId
INNER JOIN Groups g ON gc.GroupId = g.Id;

SELECT t.Name, t.Surname
FROM Teachers t
INNER JOIN Lectures l ON t.Id = l.TeacherId
INNER JOIN GroupsLectures gl ON l.Id = gl.LectureId
INNER JOIN Groups g ON gl.GroupId = g.Id
WHERE g.Name = 'P107';

SELECT t.Surname, f.Name
FROM Teachers t
INNER JOIN Lectures l ON t.Id = l.TeacherId
INNER JOIN Faculties f ON l.SubjectId IN (
    SELECT SubjectId
    FROM Lectures l1
    INNER JOIN Departments d ON l1.SubjectId = d.Id
    WHERE d.FacultyId = f.Id
);

SELECT d.Name, g.Name
FROM Departments d
INNER JOIN Groups g ON d.Id = g.DepartmentId;

SELECT s.Name
FROM Subjects s
INNER JOIN Lectures l ON s.Id = l.SubjectId
INNER JOIN Teachers t ON l.TeacherId = t.Id
WHERE t.Name = 'Samantha' AND t.Surname = 'Adams';

SELECT d.Name
FROM Departments d
INNER JOIN Subjects s ON d.Id = s.DepartmentId
WHERE s.Name = 'Database Theory';

SELECT g.Name
FROM Groups g
INNER JOIN Departments d ON g.DepartmentId = d.Id
INNER JOIN Faculties f ON d.FacultyId = f.Id
WHERE f.Name = 'Computer Science';

SELECT g.Name, f.Name
FROM Groups g
INNER JOIN Departments d ON g.DepartmentId = d.Id
INNER JOIN Faculties f ON d.FacultyId = f.Id
WHERE g.Year = 5;

SELECT CONCAT(t.Name, ' ', t.Surname), s.Name, g.Name
FROM Teachers t
INNER JOIN Lectures l ON t.Id = l.TeacherId
INNER JOIN Subjects s ON l.SubjectId = s.Id
INNER JOIN GroupsLectures gl ON l.Id = gl.LectureId
INNER JOIN Groups g ON gl.GroupId = g.Id
WHERE l.LectureRoom = 'B103';
