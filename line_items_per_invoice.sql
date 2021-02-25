SELECT Invoice.InvoiceId, COUNT(InvoiceLineId)
FROM InvoiceLine
JOIN Invoice 
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId ;