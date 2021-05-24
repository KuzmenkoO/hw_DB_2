SELECT s.branch, sum(d.salary) total_salary
FROM developers_skills ds JOIN developers d ON d.id_developers=ds.id_developers 
JOIN skills s ON ds.id_skill=s.id_skill AND s.branch='Java'
GROUP BY s.branch;