-- Which sales agent made the most in sales in 2009?
SELECT
    Max(TotalSales),
    EmployeeName
From(
    SELECT
        "$" || printf("%2f", sum(i.total)) as TotalSales,
        e.FirstName || ' ' || e.LastName as EmployeeName,
        strftime('%Y', i.InvoiceDate) as InvoiceYear
    From
        Invoice i,
        Employee e,
        Customer c
    Where
        i.customerId=c.customerId
        AND c.SupportRepId=e.EmployeeId
        and InvoiceYear='2009'
    group by
        employeeName,
        InvoiceYear
) as Sales;