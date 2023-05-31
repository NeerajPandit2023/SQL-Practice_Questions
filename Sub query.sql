Select * 
From payment
Where amount > (Select avg(amount) from payment);