-- Provide a query that shows total sales made by each sales agent.
SELECT 
e.FirstName || " " || e.LastName AS SalesAgent,
SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c
  ON c.supportRepId == e.EmployeeId
JOIN Invoice i 
  ON i.CustomerId == c.CustomerId 
GROUP BY SalesAgent
  ;