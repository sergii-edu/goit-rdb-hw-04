SELECT 
    categories.name, 
    COUNT(*) AS num_orders,
    AVG(order_details.quantity) AS average_quantity
FROM 
    order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY 
    categories.name;