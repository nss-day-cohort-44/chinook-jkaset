-- Provide a query that shows the total sales per country.
SELECT 
i.BillingCountry as Country,
round(SUM(i.Total),2) as Total 
FROM Invoice i
GROUP BY Country 
ORDER BY Total DESC;

