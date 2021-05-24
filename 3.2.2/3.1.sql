SELECT sd.branch, SUM(d.salary) 
FROM developers AS d JOIN (SELECT s.branch, ds.id_developers 
						   FROM developers_skills AS ds 
						   JOIN skills AS s 
						   ON s.branch = 'Java' AND s.id_skill=ds.id_skill) AS sd
						   ON sd.id_developers=d.id_developers
						   GROUP BY sd.branch;