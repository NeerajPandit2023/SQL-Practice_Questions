SELECT new_id, new_cat,
SUM(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total",
ROUND(AVG(new_id) OVER(PARTITION BY new_cat ORDER BY new_id),1) AS "Average",
COUNT(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Count",
MIN(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Minimum",
MAX(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Maximum"
FROM window_fun;
