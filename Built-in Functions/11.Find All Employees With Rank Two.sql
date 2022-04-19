SELECT* FROM(
SELECT EmployeeID,FirstName,LastName,Salary,
DENSE_RANK() OVER 
(Partition BY Salary
ORDER BY EmployeeID) AS Rank
FROM Employees
WHERE Salary BETWEEN 10000 AND 50000
) AS t
WHERE Rank=2
ORDER BY Salary DESC