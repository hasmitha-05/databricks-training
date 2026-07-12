select customer_id, count(sale_id) as total_sales
from sales
group by customer_id
having count(sale_id) > 1
order by total_sales desc
