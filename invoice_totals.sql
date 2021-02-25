SELECT i.total, i.BillingCountry, c.FirstName, c.LastName, c.SupportRepId, e.FirstName, e.LastName
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId;
