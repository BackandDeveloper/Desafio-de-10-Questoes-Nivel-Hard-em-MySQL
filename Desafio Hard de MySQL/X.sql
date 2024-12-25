-- Questão 10: Liste os projetos que têm mais de 100 horas trabalhadas.
SELECT project_name, SUM(hours_worked) AS total_hours
FROM projects p
JOIN project_hours ph ON p.project_id = ph.project_id
GROUP BY project_name
HAVING SUM(hours_worked) > 100;


