
#----------------------select all data from the table----------------------------
SELECT * FROM countries;
SELECT * FROM departments;

# -----------------Select spicific things from the tabe-----------------------------

SELECT department_name 
from departments;

SELECT country_id,country_name
from countries;

#-------------More about Where-----------------

SELECT *
FROM employees;

SELECT * 
FROM employees
WHERE department_id = 60;


#----------------- Aritmetic operation----------------

SELECT first_name ,salary , salary+1000
FROM employees;

SELECT first_name ,salary , salary+1000
FROM employees
WHERE department_id = 100;



#-------------- Coparision------------------------

SELECT * 
FROM employees; 

SELECT * 
FROM employees 
WHERE salary=6000;


#---------------DISTINCT----------
# To Avoid Duplicate value we use Distict


SELECT DISTINCT job_id 
FROM employees ;


#--------------- order by(ascinding or desinding order)------------------

SELECT * 
FROM employees 
ORDER BY department_id DESC;

SELECT * 
FROM employees 
ORDER BY department_id ASC;

#-----------------------------LIMIT-------------------------

SELECT * 
FROM employees 
ORDER BY department_id ASC
LIMIT 5;

#---------------------------OFFSET-----------------

SELECT * 
FROM employees 
ORDER BY department_id ASC
LIMIT 4,5;

# SAME AS ----

SELECT * 
FROM employees 
ORDER BY department_id ASC
LIMIT 5
OFFSET 4;

#-----------LIKE -------------



SELECT * 
FROM departments
where department_name LIKE "%ing";

# middle and end is same like %ing% or ing%


#------------as---------------



SELECT department_name as name
FROM departments




