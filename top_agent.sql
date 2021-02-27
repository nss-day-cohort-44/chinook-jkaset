SELECT
    Max(TotalSales),
    EmployeeName
From(
    SELECT
        "$" || printf("%2f", sum(i.total)) as TotalSales,
        e.FirstName || " " || e.LastName as EmployeeName
    
    From
        Invoice i,
        Employee e,
        Customer c
    Where
        i.customerId=c.customerId
        AND c.SupportRepId=e.EmployeeId
     
    group by
        employeeName
    
) as Sales;