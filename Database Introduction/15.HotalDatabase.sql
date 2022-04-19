Create Table Employees
(
Id INT Primary key Identity NOT NULL,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
Title NVARCHAR(50),
Notes NVARCHAR(MAX)
)
INSERT INTO Employees(FirstName,LastName,Title,Notes) VALUES
('Velizar', 'Velikov', 'Receptionist', 'Nice customer'),
('Ivan', 'Ivanov', 'Concierge', 'Nice one'),
('Elisaveta', 'Bagriana', 'Cleaner', 'Poetesa')
Create Table Customers
(
ID INT Primary key Identity,
AccountNumber BIGINT,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
PhoneNumber BIGINT,
EmergencyName NVARCHAR(50),
EmergencyNumber BIGINT,
Notes NVARCHAR(MAX)
)
INSERT INTO Customers(AccountNumber,FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber,Notes) VALUES
(123456789, 'Ginka', 'Shikerova', '359888777888', 'Sistry mi', '7708315342', 'Kinky'),
(123480933, 'Chaika', 'Stavreva', '359888777888', 'Sistry mi', '7708315342', 'Lawer'),
(123454432, 'Mladen', 'Isaev', '359888777888', 'Sistry mi', '7708315342', 'Wants a call girl')
Create Table RoomStatus
(
RoomStatus NVARCHAR(50) Primary key,
Notes NVARCHAR(MAX)
)
INSERT INTO RoomStatus(RoomStatus, Notes) VALUES
(1,'Refill the minibar'),
(2,'Check the towels'),
(3,'Move the bed for couple')
Create Table RoomTypes
(
RoomType NVARCHAR(50) Primary key,
Notes NVARCHAR(MAX)
)
INSERT INTO RoomTypes (RoomType, Notes) VALUES
('Suite', 'Two beds'),
('Wedding suite', 'One king size bed'),
('Apartment', 'Up to 3 adults and 2 children')
Create Table BedTypes
(
BedType NVARCHAR(50) Primary key,
Notes NVARCHAR(MAX)
)
INSERT INTO BedTypes(BedType,Notes) VALUES
('Double', 'One adult and one child'),
('King size', 'Two adults'),
('Couch', 'One child')
Create Table Rooms
(
RoomNumber INT Primary key Identity,
RoomType NVARCHAR(50) Foreign key REFERENCES RoomTypes(RoomType),
BedType NVARCHAR(50) Foreign key REFERENCES BedTypes(BedType),
Rate DECIMAL (6,2),
RoomStatus NVARCHAR(50),
Notes NVARCHAR(MAX)
)
INSERT INTO Rooms (Rate, Notes)
VALUES
(12,'Free'),
(15, 'Free'),
(23, 'Clean it')
Create Table Payments
(
Id INT Primary key Identity,
EmployeeID INT Foreign key REFERENCES Employees(ID),
PaymentDate DATE,
AccountNumber BIGINT,
FirstDateOccupied DATE,
LastDateOccupied DATE,
TotalDays AS DATEDIFF(DAY, FirstDateOccupied, LastDateOccupied),
AmountCharged DECIMAL(14,2),
TaxRate DECIMAL(8,2),
TaxAmount DECIMAL(8,2),
PaymentTotal DECIMAL(8,2),
Notes NVARCHAR(MAX)
)
INSERT INTO Payments (EmployeeId, PaymentDate, AmountCharged) VALUES
(1, '12/12/2018', 2000.40),
(2, '12/12/2018', 1500.40),
(3, '12/12/2018', 1000.40)
Create Table Occupancies 
(
Id INT Primary key Identity,
EmployeeId INT Foreign key REFERENCES Employees(Id),
DateOccupied DATE,
AccountNumber BIGINT,
RoomNumber INT Foreign key REFERENCES Rooms(RoomNumber),
RateApplied DECIMAL(8,2),
PhoneCharge DECIMAL(8,2),
Notes NVARCHAR(MAX)
)
INSERT INTO Occupancies (EmployeeId, RateApplied, Notes) VALUES
(1, 55.55, 'too'),
(2, 15.55, 'much'),
(3, 35.55, 'typing')