USE sql_invoicing;
SELECT p.date,
	   p.invoice_id,
       p.amount,
       c.name,
       pm.name AS Payment_method
FROM payments p
JOIN clients c 
	ON p.client_id = c.client_id
JOIN invoices i 
	ON p.invoice_id = i.invoice_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;