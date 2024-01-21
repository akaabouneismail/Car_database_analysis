/* this query displays the number of items ordered to compare it to the quantity in stock */

SELECT 
	o.productCode, sum(quantityOrdered) as sum_of_orders, p.warehouseCode, p.quantityInStock
FROM
	orderdetails o
JOIN 
	products p ON o.productCode = p.productCode
GROUP BY 
	productCode
ORDER BY 
	sum_of_orders ASC