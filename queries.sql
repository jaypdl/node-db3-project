-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
  SELECT 
    ProductName, CategoryName 
  FROM Product p
  JOIN Category c ON p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
  SELECT id AS [Order ID],
        companyname AS [Shipper Name],
        OrderDate AS [Order Date]
  FROM [order] o
        JOIN
        shipper s ON o.shipvia = s.id
  WHERE orderdate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
  SELECT ProductName AS [Product Name], Quantity
  FROM orderdetail o
  JOIN product p on o.productid = p.id
  WHERE orderid = 10251
  ORDER BY [Product Name]
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
