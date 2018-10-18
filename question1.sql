select DISTINCT employees.name,age from employees,departments,works where employees.id=works.employee_id and departments.id=works.department_id and departments.name IN('hardware','software')
