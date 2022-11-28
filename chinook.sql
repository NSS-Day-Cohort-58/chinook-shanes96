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

-- this command shows invoices of customers who only live in brazil
SELECT
    i.CustomerId,
    i.InvoiceDate,
    i.BillingCountry,
    c.FirstName,
    c.LastName
FROM Invoice i
JOIN Customer c
	ON i.CustomerId = c.CustomerId
WHERE BillingCountry IN ('Brazil');

