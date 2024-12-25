-- Questão 9: Encontre o nome do funcionário que tem o maior salário em cada departamento.
SELECT department_id, first_name, last_name, salary
FROM employees e
WHERE salary = (SELECT MAX(salary) FROM employees WHERE department_id = e.department_id);


