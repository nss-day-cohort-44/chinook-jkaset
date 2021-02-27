-- Provide a query that shows the most purchased Media Type

SELECT m.Name as MediaType,
SUM(il.Quantity) as Sales
FROM MediaType m 
JOIN Track t
  ON t.MediaTypeId = m.MediaTypeId
JOIN InvoiceLine il    
  ON il.TrackId = t.TrackId
GROUP BY MediaType
ORDER BY Sales DESC
LIMIT 1;
