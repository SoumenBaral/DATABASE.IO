USE dummydb;
select *
from employees
where salary = (   select max(salary)
					from employees
					where salary<(
						select max(salary)
						from employees
					)
                );
			
            
select * 
from employees
where salary = (
				select distinct(salary)
				from employees
				order by salary desc
				limit 1
				offset 1	
                    );
                    
                    
                    
-- Get the employees which salary is greater the manager 

select * 
from employees as EMP
where salary > (
				select salary 
                from  employees as MGR
                where EMP.manager_id = MGR.employee_id);
                    
			select *
            from employees;
            
            

select * 
from employees as EMP
where job_id = (
				select job_id 
                from  employees as MGR
                where EMP.manager_id = MGR.employee_id);