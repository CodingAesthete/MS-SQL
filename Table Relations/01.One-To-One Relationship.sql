Create Table Passports
(
PassportID INT Identity(101,1) PRIMARY KEY,
PassportNumber VARCHAR(8)
)
Insert Into Passports(PassportNumber) VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')
Create Table Persons
(
PersonId INT Identity,
FirstName VARCHAR(50),
Salary DECIMAL(18,2),
PassportID INT
)
INSERT Into Persons VALUES
('Roberto',43300.00,102),
('Tom', 56100.00,103),
('Yana', 60200.00,101)
Alter Table Persons
Add Primary key(PersonId)
Alter Table Persons
Add Unique(PassportId)
Alter Table Persons
Add Foreign key(PassportId) REFERENCES Passports(PassportId)