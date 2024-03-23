USE Academy3;
GO

INSERT INTO Subjects (Name) VALUES
    ('Introduction to Programming'),
    ('Linear Algebra'),
    ('Data Structures'),
    ('Software Engineering'),
    ('Probability Theory'),
    ('Computer Networks'),
    ('Artificial Intelligence'),
    ('“Database Theory'),
    ('Web Development'),
    ('Operating Systems');
INSERT INTO Teachers (Name, Salary, Surname) VALUES
    ('Samantha', 50000, 'Adams'),
    ('Robert', 55000, 'Brown'),
    ('Emily', 52000, 'Johnson'),
    ('David', 48000, 'Smith'),
    ('Jennifer', 51000, 'Lee'),
    ('Daniel', 49000, 'Martin'),
    ('Laura', 53000, 'Clark'),
    ('Matthew', 54000, 'Hall'),
    ('Olivia', 50000, 'Wright'),
    ('William', 47000, 'Taylor');
INSERT INTO Curators (Name, Surname) VALUES
    ('John', 'Smith'),
    ('Mary', 'Johnson'),
    ('Michael', 'Brown'),
    ('Anna', 'Lee'),
    ('David', 'Clark'),
    ('Emily', 'Martin'),
    ('Daniel', 'Wright'),
    ('Olivia', 'Taylor'),
    ('Sophia', 'Hall'),
    ('William', 'Adams');
INSERT INTO Faculties (Financing, Name) VALUES
    (1000000, 'Computer Science'),
    (800000, 'Natural Sciences'),
    (1200000, 'Engineering'),
    (900000, 'Social Sciences'),
    (700000, 'Arts'),
    (1100000, 'Health Sciences'),
    (950000, 'Business Administration'),
    (850000, 'Law'),
    (750000, 'Education'),
    (1000000, 'Environmental Studies');
INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId) VALUES
    ('A101', 1, 1),
    ('B201', 2, 2),
    ('C301', 3, 3),
    ('D401', 1, 2),
    ('E501', 2, 3),
    ('F601', 3, 1),
    ('G701', 1, 3),
    ('H801', 2, 1),
    ('I901', 3, 2),
    ('J1001', 1, 1);
INSERT INTO Departments (Name, FacultyId) VALUES
    ('Computer Science', 1),
    ('Mathematics', 2),
    ('Physics', 1),
    ('Chemistry', 2),
    ('Biology', 1),
    ('Engineering', 2),
    ('Economics', 1),
    ('History', 2),
    ('Literature', 1),
    ('Geography', 2);
INSERT INTO Groups (Name, Year, DepartmentId) VALUES
    ('P101', 1, 1),
    ('P102', 1, 2),
    ('P103', 1, 1),
    ('P104', 1, 3),
    ('P105', 1, 2),
    ('P106', 1, 1),
    ('P107', 1, 3),
    ('P108', 1, 2),
    ('P109', 1, 1),
    ('P110', 1, 3);
INSERT INTO GroupCurators (CuratorId, GroupId) VALUES
    (1, 1),
    (2, 2),
    (1, 3),
    (2, 4),
    (3, 5),
    (1, 6),
    (2, 7),
    (3, 8),
    (1, 9),
    (2, 10);
INSERT INTO GroupLectures (GroupId, LectureId) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);