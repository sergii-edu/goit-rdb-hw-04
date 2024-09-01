SELECT 
  *
FROM
  order_details
  LEFT JOIN orders ON order_details.order_id = orders.id
  INNER JOIN customers ON orders.customer_id = customers.id
  LEFT JOIN employees ON orders.employee_id = employees.employee_id
  INNER JOIN shippers ON orders.shipper_id = shippers.id
  LEFT JOIN products ON order_details.product_id = products.id
  INNER JOIN categories ON products.category_id = categories.id
  LEFT JOIN suppliers ON products.supplier_id = suppliers.id;

# при використанні LEFT JOIN замість INNER JOIN, кількість рядків збільшується,
# бо LEFT JOIN включає всі рядки з лівої таблиці, навіть якщо в правій таблиці немає співпадінь.
