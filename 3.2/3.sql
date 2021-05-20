SELECT s.branch, sum(d.salary) total_salary
FROM developers_skills ds, developers d, skills s
WHERE d.id_developers=ds.id_developers AND ds.id_skill=s.id_skill AND s.branch='Java'
GROUP BY s.branch;