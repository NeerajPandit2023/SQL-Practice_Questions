---- Total Sales Month wise -----
Select extract(year from order_date) as year, to_char(order_date, 'Mon') as Month, sum(sales) as total_sales
from products
group by 1,2
order by 3 desc, 1 asc;

---- Total Sales Years wise -----
Select extract(year from order_date) as year, sum(sales) as total_sales
from products
group by 1
order by 2 desc;