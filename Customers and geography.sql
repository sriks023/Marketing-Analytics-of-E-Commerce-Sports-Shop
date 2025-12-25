SELECT TOP 10 * FROM dBO.customers;
SELECT TOP 10 * FROM dbo.geography;
SELECT
    c.CustomerID,
    c.CustomerName,
    c.email,
    c.gender,
    c.age,
    g.country,
    g.city
FROM dbo.customers AS c
LEFT JOIN dbo.geography AS g
    ON c.geographyid = g.geographyid;
