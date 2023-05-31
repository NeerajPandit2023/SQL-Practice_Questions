--- Case Statement ---
SELECT *,
CASE
	WHEN amount >= 500 THEN 'Expensive Product'
	WHEN amount >= 100 AND amount < 500 THEN 'Moderate Product'
	ELSE 'Inexpensive Product'
END AS "Product_Status"
FROM payment
ORDER BY amount DESC;

--- Case Expration ---
SELECT customer_id,
CASE amount
	WHEN 500 THEN 'Prime customer'
	WHEN 100 THEN 'Plus customer'
	ELSE 'Regular customer'
END AS "Customer_Status"
FROM payment
ORDER BY amount DESC;


