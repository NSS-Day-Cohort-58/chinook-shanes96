-- non_usa_customers sql
SELECT 
    c.Customerid,
    c.FirstName,
    c.LastName,
    c.Country
FROM Customer c
WHERE Country NOT IN ('USA');

-- this command shows customers who only live in brazil
SELECT 
    c.Customerid,
    c.FirstName,
    c.LastName,
    c.Country
FROM Customer c
WHERE Country IN ('Brazil');