select employees.name from employees, works, departments where employees.id=works.employee_id and departments.id=works.department_id and employees.salary >(select max(budget) from departments)
