/* This query retrieves the revenue of each product along with its name and the warehouse where they're stored */
SELECT 
    p.productCode,
    p.warehouseCode,
    p.productName,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM 
    orderdetails od
JOIN 
    products p ON od.productCode = p.productCode
GROUP BY 
    p.productCode, p.productName
ORDER BY 
    total_revenue asc

