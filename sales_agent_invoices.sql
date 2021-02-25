SELECT DISTINCT e.FirstName, e.LastName, i.InvoiceId, i.Total
FROM Invoice i

JOIN Employee e
ON e.EmployeeId = c.SupportRepId
JOIN CUSTOMER c
ON c.CustomerId = i.CustomerId
;