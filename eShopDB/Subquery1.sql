USE WKdzik;
GO
SELECT p.Category, p.Name, p.Price
FROM Product p
WHERE p.Price = (
    SELECT MAX(Price)
    FROM Product
    WHERE Category = p.Category
);
--Find the most expensive product in each category