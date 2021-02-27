-- Provide a query that shows the count of customers assigned to each sales agent
SELECT e.FirstName || " " || e.LastName as SalesAgent,
  COUNT(c.CustomerId) as NumCustomers
FROM CUSTOMER c
JOIN EMPLOYEE e
  ON c.SupportRepId = e.EmployeeId
GROUP BY SalesAgent;