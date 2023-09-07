-- find name of student who has maximum marks in any student. In normal queries, first innermost query gets executed and then outer queries.
SELECT name, marks FROM student WHERE marks=(SELECT MAX(marks) FROM student)

-- print marks of all students in every subject except the students that are suspended.
SELECT * FROM student WHERE name NOT IN (SELECT name FROM suspended)

-- second highest salary
SELECT max(salary) as secSal FROM employee WHERE salary<(SELECT max(salary) FROM employee)

-- 5th highest salary
SELECT * FROM employee WHERE salary=(SELECT min(salary) FROM employee WHERE salary IN (SELECT DISTINCT TOP 5 salary FROM employee ORDER BY salary DESC));

-- find details of all employees whose salary is greater than overall average salary.
SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);

-- find details of employees whose salary is greater than average salaries of all departments.
SELECT * FROM employee WHERE salary > ALL(SELECT AVG(salary) FROM employee GROUP BY dept)

-- Correlated sub-queries: sub-query uses value of the outer query. Sub-query is evaluated for each row of the outer query. 
-- Ex: Find name and dept_id of every employee whose salary is above average in department.
SELECT name, dept_id FROM employee e1 WHERE salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e1.dept_id);

-- Ex: find names of departments that don't have any employee.
SELECT name FROM department WHERE dept_id NOT IN (SELECT dept_id FROM employee);
-- using NOT EXISTS
SELECT name FROM department d WHERE NOT EXISTS(SELECT dept_id FROM employee e WHERE e.dept_id=d.dept_id);

-- Ex: print employee names, their salaries and their department average salaries
SELECT name, salary (SELECT AVG(salary) FROM employee e2 WHERE e2.dept_id=e1.dept_id) AS average FROM employee e1;