SELECT AVG(d.salary) avg_salary FROM developers d, projects p, developers_projects dp 
WHERE d.id_developers=dp.id_developers AND dp.id_project=p.id_project AND p.id_project = (
	SELECT id_project FROM projects WHERE cost = (
		SELECT min(cost) FROM projects));