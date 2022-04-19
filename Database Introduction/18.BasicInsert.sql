INSERT INTO [Towns] ([Name])
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')

INSERT INTO [Departments] ([Name])
VALUES 
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance')

INSERT INTO [Employees] ([FirstName],[MiddleName],[LastName],[JobTitle],
[DepartmentId],[HireDate],[Salary])
VALUES 
('Petar' , 'P' , 'Petrov', 'Senior Engineer',1,'2004/02/03',4000.00),
('Maria' , 'P' , 'Ivanova', 'Quality Assurance',5,'2016/08/08',525.00),
('Georgi' , 'T' , 'Ivanov', 'Sales',2,'2007/09/10',3000.00),
('Peter' , 'P' , 'Pan', '.Marketing',3,'2016/11/11',599.88)