Create view V_EmployeeNameJobTitle AS
Select FirstName+' '+ ISNULL(MiddleName,'')+' '+LastName AS [Full Name],JobTitle
From Employees