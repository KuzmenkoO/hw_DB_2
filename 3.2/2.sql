SELECT p.name_project, sum(d.salary) total_cost
FROM developers_projects dp, developers d, projects p
WHERE d.id_developers=dp.id_developers AND dp.id_project=p.id_project 
GROUP BY p.name_project 
ORDER BY total_cost DESC
LIMIT 1;