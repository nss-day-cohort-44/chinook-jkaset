SELECT i.InvoiceId, 
      t.Name AS TrackName, 
      a.Name AS ArtistName
FROM InvoiceLine i
JOIN Track t
  ON i.TrackId = t.TrackId
JOIN Album
  ON Album.ArtistId = t.AlbumId
JOIN Artist a
  ON Album.ArtistId = a.ArtistId

GROUP BY i.InvoiceId ;