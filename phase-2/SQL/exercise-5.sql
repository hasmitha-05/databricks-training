select customer_id,avg(total_amount) as average_sales
from sales
group by customer_id
order by average_sales desc;
