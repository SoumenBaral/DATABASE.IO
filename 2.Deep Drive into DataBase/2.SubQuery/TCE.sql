
WITH AVGIT AS(		
			SELECT avg(salary) AS SAL1
			FROM employees
			where department_id = 60
),
MAXIS AS(
		SELECT max(salary) AS SAL2
		FROM employees
		where department_id = 20
        )
SELECT *
FROM employees 
where salary > (SELECT SAL1 FROM AVGIT ) AND salary <(select SAL2 FROM MAXIS)