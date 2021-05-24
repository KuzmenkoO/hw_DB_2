SELECT p.name_project, x.cost 
FROM projects p 
JOIN (SELECT dp.id_project, SUM(d.salary) AS cost
FROM developers d JOIN developers_projects dp ON d.id_developers=dp.id_developers
GROUP BY dp.id_project) AS x 
ON p.id_project=x.id_project 
GROUP BY p.name_project, x.cost
ORDER BY x.cost DESC
Limit 1;