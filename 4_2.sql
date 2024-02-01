select postal_code, count(postal_code) as "customer_numbers"
from customer
group by postal_code
having count(postal_code) > 1
order by customer_numbers DESC;