USE Academy_4;
GO

INSERT INTO Departments (Financing, Name, FacultyId) VALUES
    (100000, N'Computer Science', 1),
    (80000, N'Physics', 2),
    (120000, N'Chemistry', 1),
    (90000, N'Mathematics', 3),
    (75000, N'History', 4),
    (110000, N'Software Development', 2),
    (95000, N'Engineering', 1),
    (85000, N'Economics', 3),
    (105000, N'Psychology', 4),
    (70000, N'Geography', 2);
INSERT INTO Faculties (Name) VALUES
    (N'Faculty of Computer Science'),
    (N'Faculty of Physics'),
    (N'Faculty of Mathematics'),
    (N'Faculty of History'),
    (N'Faculty of Literature'),
    (N'Faculty of Engineering'),
    (N'Faculty of Economics'),
    (N'Faculty of Psychology'),
    (N'Faculty of Chemistry'),
    (N'Faculty of Geography');
INSERT INTO Groups (Name, Year, DepartmentId) VALUES
    (N'Group A', 2, 1),
    (N'Group B', 3, 2),
    (N'Group C', 1, 3),
    (N'Group D', 4, 1),
    (N'Group E', 2, 2),
    (N'Group F', 3, 3),
    (N'Group G', 1, 1),
    (N'Group H', 4, 2),
    (N'Group I', 2, 3),
    (N'Group J', 3, 1);
INSERT INTO GroupsLectures (DayOfWeek, GroupId, LectureId)
VALUES
    (1, 101, 201),
    (2, 102, 202),
    (3, 103, 203),
    (4, 104, 204),
    (5, 105, 205),
    (6, 106, 206),
    (7, 107, 207),
    (1, 108, 208),
    (2, 109, 209),
    (3, 110, 210);
INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId)
VALUES
    ('Room A101', 101, 201),
    ('Room B102', 102, 202),
    ('Room C103', 103, 203),
    ('Room D201', 104, 204),
    ('Room E202', 105, 205),
    ('Room F203', 106, 206),
    ('Room G301', 107, 207),
    ('Room H302', 108, 208),
    ('Room I303', 109, 209),
    ('Room J304', 110, 210);
INSERT INTO Subjects (Name)
VALUES
    ('Mathematics'),
    ('Physics'),
    ('Computer Science'),
    ('History'),
    ('Literature'),
    ('Chemistry'),
    ('Biology'),
    ('Art'),
    ('Economics'),
    ('Geography');
INSERT INTO Teachers (Name, Salary, Surname)
VALUES
    ('John', 50000, 'Smith'),
    ('Mary', 55000, 'Johnson'),
    ('Robert', 60000, 'Williams'),
    ('Linda', 52000, 'Brown'),
    ('Michael', 58000, 'Jones'),
    ('Patricia', 53000, 'Davis'),
    ('William', 62000, 'Miller'),
    ('Elizabeth', 54000, 'Wilson'),
    ('Dave', 57000, 'McQueen'),
    ('Jack', 61000, 'Underhill');

