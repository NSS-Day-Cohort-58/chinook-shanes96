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

-- this command shows all employees who are sales agents
SELECT 
    e.Employeeid,
    e.FirstName,
    e.LastName,
    e.Phone,
    e.Fax,
    e.Email,
    e.HireDate,
    e.City,
    e.State,
    e.Country,
    e.PostalCode
FROM Employee e
WHERE Title IN ('Sales Support Agent');

-- this command filters invoices by country
SELECT * FROM Invoice ORDER BY BillingCountry DESC;

-- this command shows the invoices associated with each sales agent.
SELECT
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Employee e
JOIN Customer c
	ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
