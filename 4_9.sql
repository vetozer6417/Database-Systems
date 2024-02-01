select c.customer_id, c.customer_name
from customer c
join ordert o on c.customer_id = o.customer_id
where order_date between '2020-01-10 00:00:00' and '2020-01-15 23:59:59'
group by c.customer_id
order by count(o.order_id) desc
