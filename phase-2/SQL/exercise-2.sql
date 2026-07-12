selectcustomer_id,sum(total_amount) as total_sales
from sales
group by customer_id
order by total_sales desc
limit 3
