SELECT p.name_project, AVG(d.salary) avg_salary 
FROM developers d JOIN developers_projects dp ON d.id_developers=dp.id_developers 
JOIN projects p ON dp.id_project=p.id_project AND p.id_project = (
	SELECT id_project FROM projects WHERE cost = (
		SELECT min(cost) FROM projects))
		GROUP BY p.name_project;