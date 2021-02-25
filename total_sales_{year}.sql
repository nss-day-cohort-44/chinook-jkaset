SELECT SUM(Total)
strftime("%Y", InvoiceDate) as year
FROM Invoice
WHERE year BETWEEN "2009" AND "2011"
GROUP BY year;