-- Questão 8: Liste os funcionários que foram contratados no mesmo mês e ano.
SELECT first_name, last_name, hire_date
FROM employees e1
WHERE EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e1.employee_id <> e2.employee_id
    AND MONTH(e1.hire_date) = MONTH(e2.hire_date)
    AND YEAR(e1.hire_date) = YEAR(e2.hire_date)
);

