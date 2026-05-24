select * from Employees where salary is null
select * from Orders where discount is not null
select * from Products where category is null
select count(emp_id) from Employees where manager_id is null
select ifnull(salary,0) from Employees;
select ifnull(bonus,1000) from Employees;
select amount, ifnull(amount,500) from Orders;
select ifnull(stock,0) from Products;
select name, coalesce(salary,bonus) as earnings from Employees

