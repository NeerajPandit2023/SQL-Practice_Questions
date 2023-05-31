SELECT new_id,
FIRST_VALUE(new_id) OVER(ORDER BY new_id) AS "FIRST_VALUE",
LAST_VALUE(new_id) OVER(ORDER BY new_id) AS "LAST_VALUE",
LEAD(new_id) OVER(ORDER BY new_id) AS "LEAD",
LAG(new_id) OVER(ORDER BY new_id) AS "LAG"
FROM window_fun;

--increase LEAD and LAG
SELECT new_id,
LEAD(new_id,2) OVER(ORDER BY new_id) AS "LEAD",
LAG(new_id,2) OVER(ORDER BY new_id) AS "LAG"
FROM window_fun;



