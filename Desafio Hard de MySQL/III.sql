-- Questão 3: Encontre o nome do funcionário que tem o maior número de subordinados.
SELECT first_name, last_name
FROM employees e
WHERE employee_id = (SELECT manager_id FROM employees GROUP BY manager_id ORDER BY COUNT(*) DESC LIMIT 1);


