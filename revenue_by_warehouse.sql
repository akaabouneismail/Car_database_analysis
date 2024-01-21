/* This query retrieves the revenue of each warehouse to determine which warehouse generates the least amount of revenue */

SELECT 
    p.warehouseCode,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM 
    orderdetails od
JOIN 
    products p ON od.productCode = p.productCode
GROUP BY 
    p.warehouseCode
ORDER BY 
    total_revenue
