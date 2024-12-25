-- Questão 6: Liste os funcionários que não têm um gerente.
SELECT employee_id, first_name, last_name
FROM employees
WHERE manager_id IS NULL;


