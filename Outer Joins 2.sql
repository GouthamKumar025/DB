SELECT o.order_date, 
	   o.order_id,
       c.first_name AS Customer,
       sh.name AS Shipper,
       os.name AS Status 
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.order_id = os.order_status_id

