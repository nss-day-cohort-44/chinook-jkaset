SELECT i.InvoiceId, t.name AS TrackName, a.name AS ArtistName
FROM InvoiceLine
JOIN Invoice 
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
JOIN Album
ON Album.ArtistId = Track.AlbumId
JOIN Artist
ON Album.ArtistId = Artist.ArtistId

GROUP BY InvoiceLine.InvoiceId ;