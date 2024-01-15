SELECT 
	product.sku ,
    product.product_name
FROM 
	product
WHERE 
	product.id not in ( SELECT invoice_item.product_id FROM invoice_item)
ORDER BY product.sku ASC