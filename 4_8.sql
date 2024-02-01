select c.customer_id, c.customer_name, count(*) as "order_count"
from customer c
join ordert o on c.customer_id = o.customer_id
group by c.customer_id
order by count(o.order_id) desc
limit 3;
