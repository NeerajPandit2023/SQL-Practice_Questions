Select mode, sum(Amount) as total
From payment
Group by mode
Order by total desc;