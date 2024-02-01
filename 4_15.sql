--Delete form order_line
DELETE FROM order_line
USING ordert
WHERE order_line.order_id = ordert.order_id AND ordert.customer_id = 10001;

--Delete from ordert
DELETE FROM ordert
WHERE customer_id = 10001;

--Delete from customer
DELETE FROM customer
WHERE customer_id = 10001;

SELECT * FROM customer,ordert,order_line;
