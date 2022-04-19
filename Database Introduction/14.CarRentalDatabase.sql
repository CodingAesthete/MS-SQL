Create Table Categories 
(
Id INT Primary key Identity,
CategoryName NVARCHAR(50) NOT NULL,
DailyRate DECIMAL,
WeeklyRate DECIMAL,
MonthlyRate DECIMAL,
WeekendRate DECIMAL
)
Create Table Cars
(
Id INT Primary key Identity,
PlateNumber NVARCHAR(50) NOT NULL ,
Manufacturer NVARCHAR(50) NOT NULL,
Model NVARCHAR(50) NOT NULL,
CarYear INT NOT NULL,
CategoryId INT NOT NULL,
Doors INT NOT NULL,
Picture NVARCHAR(MAX),
Condition NVARCHAR(50),
Available NVARCHAR(50) NOT NULL
)
Create Table Employees
(
ID INT Primary key Identity,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
Create Table Customers
(
Id INT Primary key Identity,
DriverLicenceNumber BIGINT NOT NULL,
FullName NVARCHAR(50) NOT NULL,
[Address] NVARCHAR(200) NOT NULL,
City NVARCHAR(50) NOT NULL,
ZIPCode INT NOT NULL,
Notes NVARCHAR(MAX)
)
Create Table RentalOrders
(
Id INT Primary key Identity,
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel DECIMAL NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT NOT NULL,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
TotalDays INT NOT NULL,
RateApplied NVARCHAR(50),
TaxRate DECIMAL NOT NULL,
OrderStatus NVARCHAR(50),
Notes NVARCHAR(MAX)
)
INSERT INTO Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES('category', 10.5, 10.5, 10.5, 10.5),
('category', 10.5, 10.5, 10.5, 10.5),
('category', 10.5, 10.5, 10.5, 10.5);
INSERT INTO Cars ( PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
VALUES ('CA 1234 CC', 'make', 'model', '2018', 1, 3, 'picture', 'car_condition', 'Yes'),
('CA 1234 CC', 'make', 'model', '2018', 1, 3, 'picture', 'car_condition', 'Yes'),
('CA 1234 CC', 'make', 'model', '2018', 1, 3, 'picture', 'car_condition', 'Yes');
INSERT INTO Employees (FirstName, LastName, Title, Notes)
VALUES('first_name', 'last_name', 'title', 'notes'),
('first_name', 'last_name', 'title', 'notes'),
('first_name', 'last_name', 'title', 'notes');
INSERT INTO Customers (DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
VALUES ('111111111111111', 'full_name', 'address', 'city', 1528, 'notes'),
('111111111111111', 'full_name', 'address', 'city', 1528, 'notes'),
('111111111111111', 'full_name', 'address', 'city', 1528, 'notes');
INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
VALUES (2, 1, 3, 44.4, 100000, 100500, 100, '2018-01-02', '2018-01-18', 3, 'rate_applied', 20.5, 'order_status', 'notes'),
(2, 1, 3,44.4, 100000, 100500, 100, '2018-01-02', '2018-01-18', 3, 'rate_applied', 20.5, 'order_status', 'notes'),
(2, 1, 3, 44.4, 100000, 100500, 100, '2018-01-02', '2018-01-18', 3, 'rate_applied', 20.5, 'order_status', 'notes