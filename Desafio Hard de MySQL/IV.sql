-- Questão 4: Liste os departamentos que têm mais de 5 funcionários.
SELECT department_id, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

