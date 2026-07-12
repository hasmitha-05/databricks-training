select customer_id, sum(total_amount) as total_spend
from sales
group by customer_id
order by total_spend desc
