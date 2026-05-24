select * from Employees where salary is null
select * from Orders where discount is not null
select * from Products where category is null
select count(emp_id) from Employees where manager_id is null
select ifnull(salary,0) from Employees;
select ifnull(bonus,1000) from Employees;
select amount, ifnull(amount,500) from Orders;
select ifnull(stock,0) from Products;
select name, coalesce(salary,bonus) as earnings from Employees
select name, coalesce(salary,bonus,0) as earnings from Employees
select product_id, coalesce(price,0) as earnings from Products
select order_id, coalesce(amount,discount,0) as earnings from Orders
select name, nullif(salary,0) from Employees
select order_id, nullif(discount,0) from Orders
select amount / NULLIF(discount, 0) from Orders
select nullif(coupon_code,'DISC10')from Orders
select emp_id,ifnull(salary,0) + ifnull(bonus,0) AS total_earnings from Employees;
select name from Employees where salary is null AND bonus is null
select order_id from Orders where amount is null AND discount is null
select product_id from Products where price is null AND category is not null
select *from ( select name, coalesce(salary,bonus,1000)as income from Employees)x
select nullif(discount,0)from Order
select order_id, amount-IFNULL(discount,0) as payable_amount from Orders
select * from Employees where salary is null and manager_id is not null
