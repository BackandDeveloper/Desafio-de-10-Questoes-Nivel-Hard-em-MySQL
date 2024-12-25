-- Questão 5: Encontre o nome do projeto que tem a maior quantidade de horas trabalhadas.
SELECT project_name
FROM projects p
JOIN project_hours ph ON p.project_id = ph.project_id
GROUP BY project_name
ORDER BY SUM(hours_worked) DESC
LIMIT 1;

