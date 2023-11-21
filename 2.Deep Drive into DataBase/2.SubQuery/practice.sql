USE dummydb;
SELECT * 
FROM employees
WHERE employee_id = 144;

SELECT * 
FROM employees
WHERE salary>(SELECT salary  
FROM employees
WHERE employee_id = 144);

SELECT * 
FROM employees
where salary =(SELECT  max(salary)
				FROM employees);
                
                
 
 SELECT * 
from employees ;

select * 
from departments ;

# Somebody wants to know that employee of the  marketing 
 SELECT * 
from employees ;

select * 
from departments 
where department_id = 20;

# soupose we don't  know the the department Id then we need soubqurey

select * 
from departments 
where department_id = ( SELECT department_id 
						from employees 
                        Where employee_id = 201
                        );
                        
                        
                        
SELECT  avg(salary) 
from employees
where department_id =(select department_id 
					from departments 
					WHERE department_name = "Marketing "
						);
                        
                        
# Count How maney worker in IT Department 

SELECT  COUNT(*) AS TOTAL_ITAN 
from employees
where department_id =(select department_id 
					from departments 
					WHERE department_name = "iT"
						);


                