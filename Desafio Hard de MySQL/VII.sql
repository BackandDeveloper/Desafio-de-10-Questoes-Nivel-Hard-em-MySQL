-- Questão 7:
-- Encontre os funcionários que têm o segundo maior salário em cada 
-- departamento.

WITH RankedSalaries AS (
    SELECT 
        department_id, 
        employee_id, 
        salary, 
        DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
    FROM employees
)
SELECT 
    department_id, 
    employee_id, 
    salary
FROM RankedSalaries
WHERE rank = 2;





