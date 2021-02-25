SELECT Invoice.InvoiceId, Track.name
FROM InvoiceLine
JOIN Invoice 
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceLine.InvoiceId ;
