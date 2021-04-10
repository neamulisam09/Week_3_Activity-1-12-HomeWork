// Activity 1 Solution

SELECT last_name, hire_date 
FROM emps
WHERE year(hire_date) = 1994;



// Activity 2 Solution

SELECT last_name, salary, commission_pct
FROM emps
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;



// Activity 3 Solution

SELECT last_name
FROM emps
WHERE last_name LIKE '%a%'
AND last_name LIKE '%e%';



// Activity 4 Solution

SELECT e.last_name, e.department_id, d.department_name
FROM emps E, depts D
WHERE E.department_id = D.department_id;



// Activity 5 Solution

SELECT E.last_name, D.department_name, D.location_id, l.City
FROM emps E, depts D, locs l
WHERE E.department_id = D.department_id
AND D.location_id = l.location_id
AND E.commission_pct IS NOT NULL;



// Activity 6 Solution

SELECT E.last_name, E.job_id, E.department_id, 
d.department_name
FROM emps E JOIN depts D 
ON (E.department_id = D.department_id)
JOIN locs l
ON (D.location_id = l.location_id)
WHERE LOWER(l.city) = 'toronto';



// Activity 7 Solution

SELECT last_name, salary, commission_pct
FROM emps
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;



// Activity 8 Solution

SELECT w.last_name "Employee", W.employee_id "EMP#", 
M.last_name "Manager", M.employee_id "Mgr#"
FROM emps 
W join emps M
ON (W.manager_id = M.employee_id);



// Activity 9 Solution

SELECT ROUND(MAX(salary),0) "Maximum",
ROUND(MIN(salary),0) "Minimum",
ROUND(SUM(salary),0) "Sum",
ROUND(AVG(salary),0) "Average"
FROM emps;



// Activity 10 Solution

SELECT job_id, ROUND(MAX(salary),0) "Maximum",
ROUND(MIN(salary),0) "Minimum",
ROUND(SUM(salary),0) "Sum",
ROUND(AVG(salary),0) "Average"
FROM emps
GROUP BY job_id;



// Activity 11 Solution

SELECT job_id, COUNT(*)
FROM emps
GROUP BY job_id;



// Activity 12 Solution

SELECT manager_id, MIN(salary)
FROM emps
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) <= 6000
ORDER BY MIN(salary) DESC;



//Home Work Solution

SELECT D.department_name "Name", D.location_id "Location ",
COUNT(*) "Number of People",
ROUND(AVG(salary),2) "Salary"
FROM emps E, depts D
WHERE E.department_id = D.department_id
GROUP BY D.department_name, D.location_id;