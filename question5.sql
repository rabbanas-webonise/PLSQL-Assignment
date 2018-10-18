select employees.name 
from employees, departments 
where employees.id=departments.manager_id and departments.budget>20000000000 
group by employees.id, employees.name 

