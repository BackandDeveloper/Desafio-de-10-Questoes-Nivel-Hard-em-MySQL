-- Questão 1: Encontre o segundo maior salário de cada departamento.
SELECT department_id, MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees WHERE department_id = e.department_id)
GROUP BY department_id;

