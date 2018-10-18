select employees.name ,budget
from employees, works , departments where employees.id=works.employee_id and departments.id=works.department_id and budget=(select max(budget) from departments)

select max(budget), employees.name from employees,departments where employees.id=departments.manager_id;
