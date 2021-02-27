-- Provide a query that shows the most purchased track of 2013
SELECT 
TrackName,
MAX(Purchases),
iYear
FROM
(SELECT
  t.Name as TrackName,
  COUNT(il.InvoiceId) as Purchases,
  strftime('%Y', i.InvoiceDate) AS iYear

FROM Track t 
JOIN InvoiceLine il
  ON il.TrackId = t.TrackId
JOIN Invoice i 
  ON i.InvoiceId = il.InvoiceId
WHERE iYear = "2013"
);

