select p.product_id, p.product_description
from product p
join order_line o ON p.product_id = o.product_id
group by p.product_id
order by count(*) DESC
limit 2;
