-- unior operation 
SELECT *
FROM employees
where salary > 10000
union
select * 
from employees
where department_id = 100;

-- Union all 

 
SELECT *
FROM employees
where salary > 10000
union
select * 
from employees
where department_id = 100;


-- Intersection

SELECT *
FROM employees
where salary > 10000
INTERSECT
select * 
from employees
where department_id = 100;
 
 
 
 -- MUNIS 
SELECT *
FROM employees
where salary > 10000 AND department_id = 100;


