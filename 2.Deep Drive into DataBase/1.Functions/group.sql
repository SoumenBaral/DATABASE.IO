USE dummydb;

SELECT * 
FROM employees;

SELECT MAX(salary)
FROM employees;

SELECT MIN(salary)
FROM employees;

SELECT AVG(salary)
FROM employees;

SELECT COUNT(salary)
FROM employees;

SELECT COUNT(*)  #COUNT ALL THE ROW
FROM employees;

SELECT SUM(salary)
FROM employees;


SELECT department_id , MAX(salary)
FROM employees
GROUP BY department_id;


SELECT department_id , MAX(salary)
FROM employees
WHERE department_id != 20
GROUP BY department_id
Having(MAX(salary))<5000;


SELECT department_id , MAX(salary) as sal
FROM employees
WHERE department_id != 20
GROUP BY department_id
Having(sal)<5000;



#ALTER is a table structure modifier we can add columns update columns and modify the columns