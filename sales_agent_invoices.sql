SELECT DISTINCT e.FirstName, e.LastName, i.InvoiceId
FROM Employee e
JOIN CUSTOMER c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
;