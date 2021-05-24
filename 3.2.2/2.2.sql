SELECT p.name_project, SUM(d.salary) total_cost
FROM developers_projects dp JOIN developers d ON d.id_developers=dp.id_developers
JOIN projects p ON dp.id_project=p.id_project 
GROUP BY p.name_project 
ORDER BY total_cost DESC
LIMIT 1;
