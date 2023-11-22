select employees.first_name,departments.department_name
from employees,departments
where departments.department_id = employees.department_id;

## Using joint 
select employees.first_name,departments.department_name
from employees join departments on employees.employee_id = departments.department_id;

-- option 2 for join:: 
 
 select employees.first_name,departments.department_name
from employees join departments using(department_id);


select distinct(salary) 
from employees
where 