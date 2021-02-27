-- Provide a query that shows the top 5 most purchased tracks over all.
-- only returning 1??


SELECT 
TrackName,
MAX(Purchases)

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
WHERE iYear LIKE '%'
ORDER BY Purchases DESC
LIMIT 5
);

