SELECT COUNT(InvoiceLineId)
FROM InvoiceLine
JOIN Invoice 
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE InvoiceLine.InvoiceId = 37;