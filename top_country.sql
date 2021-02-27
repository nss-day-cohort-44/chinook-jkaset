-- Which country's customers spent the most?

SELECT 
i.BillingCountry as Country,
round(SUM(i.Total),2) as Total 
FROM Invoice i
GROUP BY Country 
ORDER BY Total DESC
LIMIT 1;