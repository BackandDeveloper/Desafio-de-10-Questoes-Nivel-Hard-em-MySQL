-- Questão 2: Liste todos os funcionários que têm um salário maior que a média do seu departamento.
SELECT employee_id, first_name, last_name, salary
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);


