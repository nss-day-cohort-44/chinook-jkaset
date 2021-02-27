-- Provide a query that shows the top 3 best selling artists

SELECT 
a.Name as ArtistName,
SUM(il.Quantity) AS Sales

FROM Artist a 
JOIN Album al
  ON al.ArtistId = a.ArtistId
JOIN Track t     
  ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
  ON il.TrackId = t.TrackId
JOIN Invoice i   
  ON i.InvoiceId = il.InvoiceId
GROUP BY ArtistName
ORDER BY Sales DESC
LIMIT 3;
