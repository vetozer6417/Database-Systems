SELECT C.customer_id, C.customer_name
FROM customer C
LEFT JOIN ordert o ON C.customer_id = o.customer_id
WHERE o.customer_id IS NULL
ORDER BY C.customer_id ASC
