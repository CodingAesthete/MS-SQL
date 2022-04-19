CREATE TABLE Teachers
(
TeacherID INT IDENTITY(101,1),
[Name] VARCHAR(50) NOT NULL,
ManagerID INT NULL
)
INSERT INTO Teachers([Name],ManagerID) VALUES
('John',NULL),
('Maya',106),
('Silvia',106),
('Ted',105),
('Mark',101),
('Greta',101)
ALTER TABLE Teachers
ADD PRIMARY KEY(TeacherID)
ALTER TABLE Teachers
ADD FOREIGN KEY(ManagerID) REFERENCES Teachers(TeacherID)