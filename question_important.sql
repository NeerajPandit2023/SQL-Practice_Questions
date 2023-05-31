Select Extract(year from order_date) as years, to_char(order_date, 'Mon') as months, sum(sales) as total_sales
From products
Group by 1,2
Order by 3 desc