USE Academy_5;
GO

INSERT INTO Teachers (Name, Surname) VALUES
    ('John', 'Smith'),
    ('Alex', 'Carmack'),
    ('Michael', 'Brown'),
    ('Emily', 'Davis'),
    ('Robert', 'Miller'),
    ('Sophia', 'Wilson'),
    ('David', 'Moore'),
    ('Olivia', 'Taylor'),
    ('Daniel', 'Anderson'),
    ('Edward', 'Hopper');

INSERT INTO Subjects (Name) VALUES
    ('Mathematics'),
    ('Computer Science'),
    ('Physics'),
    ('Chemistry'),
    ('Biology'),
    ('History'),
    ('Literature'),
    ('Languages'),
    ('Philosophy'),
    ('Arts');

INSERT INTO Departments (Building, Name, FacultyId, HeadId) VALUES
    (1, 'Software Development', 1, 31),
    (2, 'Mathematics', 1, 32),
    (3, 'Physics', 1, 33),
    (4, 'Chemistry', 1, 34),
    (5, 'Biology', 1, 35),
    (1, 'History', 2, 36),
    (2, 'Literature', 2, 37),
    (3, 'Languages', 2, 38),
    (4, 'Philosophy', 2, 39),
    (5, 'Arts', 2, 40);

INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId) VALUES
    (1, 1, 1, 1, 1),
    (2, 2, 2, 2, 2),
    (3, 3, 3, 3, 3),
    (4, 4, 4, 4, 4),
    (5, 5, 5, 5, 5),
    (6, 6, 6, 6, 6),
    (7, 7, 7, 7, 7),
    (8, 1, 8, 8, 8),
    (1, 2, 9, 9, 9),
    (2, 3, 10, 10, 10);

INSERT INTO LectureRooms (Building, Name) VALUES
    (1, '101'), (1, '102'), (1, '103'), (1, 'A311'), (1, 'A104'),
    (2, '201'), (2, '202'), (2, '203'), (2, '204'), (2, '205');

INSERT INTO Groups (Name, Year, DepartmentId) VALUES
    ('CS101', 1, 1),
    ('CS102', 1, 1),
    ('Math201', 2, 2),
    ('Math202', 2, 2),
    ('Physics301', 3, 3),
    ('Physics302', 3, 3),
    ('Chem401', 4, 4),
    ('Chem402', 4, 4),
    ('Bio501', 5, 5),
    ('F505', 5, 5);

INSERT INTO Faculties (Building, Name, DeanId) VALUES
    (1, 'Science', 41),
    (2, 'Humanities', 42),
    (3, 'Engineering', 43),
    (4, 'Social Sciences', 44),
    (5, 'Health Sciences', 45),
    (1, 'Computer Science', 46),
    (2, 'Business', 47),
    (3, 'Education', 48),
    (4, 'Fine Arts', 49),
    (5, 'Medicine', 50);

INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES
    (11, 1), (12, 2), (13, 3), (14, 4), (15, 5),
    (16, 6), (17, 7), (18, 8), (19, 9), (20, 10);

INSERT INTO GroupsLectures (GroupId, LectureId) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
    (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

INSERT INTO Lectures (SubjectId, TeacherId) VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
    (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

INSERT INTO Curators (TeacherId) VALUES
    (1), (2), (3), (4), (5),
    (6), (7), (8), (9), (10);

INSERT INTO Assistants (TeacherId) VALUES
    (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO Deans (TeacherId) VALUES
    (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO Heads (TeacherId) VALUES
    (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);


