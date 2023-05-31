Select candidate_id, count(skills) as skill_counts
From emp
Where skills in ('Python','SQL','Power BI')
Group by candidate_id
Having count(skills) = 3
Order by candidate_id asc