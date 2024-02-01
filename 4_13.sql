SELECT SUM(A.ordered_quantity * P.standard_price) AS total_payment
FROM order_line A
JOIN product P ON A.product_id = P.product_id
WHERE A.order_id = 3;
