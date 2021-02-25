SELECT DISTINCT e.FirstName, e.LastName
FROM Employee e
JOIN CUSTOMER c
WHERE e.EmployeeId = c.SupportRepId;
