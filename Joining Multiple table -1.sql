USE sql_store;
SELECT o.order_id, o.customer_id, c.first_name, c.last_name,os.order_status_id 
FROM orders o 
JOIN customers c 
ON o.customer_id = c.customer_id
JOIN order_statuses os
ON o.status = os.order_status_id;