select customer_id, sum(total_amount) AS total_sales
from sales
group by customer_id
