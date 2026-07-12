select c.customer_id, c.first_name, c.last_name, c.city
from customers c
left join sales s
on c.customer_id = s.customer_id
where s.customer_id is null
