/* join query to display the warehouse code of each order */ 


SELECT 
	od.orderNumber,
    od.productCode,
    od.quantityOrdered,
    od.priceEach,
    p.quantityInStock,
    p.warehouseCode,
    p.buyPrice
FROM 
    orderdetails od
JOIN 
    products p ON od.productCode = p.productCode;
