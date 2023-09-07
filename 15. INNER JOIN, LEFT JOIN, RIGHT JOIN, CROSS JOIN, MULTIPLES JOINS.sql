-- INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN, FULL JOIN, SELF JOIN
use student;

-- CROSS JOIN - Returns the Cartesian product of the sets A x B
SELECT * FROM city c CROSS JOIN student_data sd;
-- Another way to represent
SELECT * FROM city c, student_data sd;

-- INNER JOIN => Returns records that have matching values in both tables, A ∩ B. When equal operator is used then this join is called as Equi Join. Join done on columns which has same name is Natural Join. Equi join is a special case of Natural join and natural join is a special case of inner join.
SELECT c.Cname, sd.id, sd.name, sd.age, sd.gender, sd.roll_no FROM city c INNER JOIN student_data sd ON c.Cid = sd.city;
-- NATURAL JOIN
SELECT employee Name, employee.dept_id, department.dept_id, department dept_name FROM employee NATURAL JOIN department;

-- BELOW ARE OUTER JOINS: -
-- 1. LEFT JOIN - Returns all records from the left table, and the matched records from the right table, if a record doesn't matches it returns with NULL values for right cols.
SELECT c.Cname, sd.id, sd.name, sd.age, sd.gender, sd.roll_no FROM city c LEFT OUTER JOIN student_data sd ON c.Cid = sd.city;

-- 2. RIGHT JOIN - Returns all records from the right table, and the matched records from the left table. Just opposite of LEFT JOIN.
SELECT c.Cname, sd.id, sd.name , sd.age, sd.gender, sd.roll_no FROM student_data sd RIGHT OUTER JOIN city c ON c.Cid = sd.city;

-- 3. FULL JOIN: union of LEFT AND RIGHT JOIN. A U B, in some database full join may not be available so we first use LEFT JOIN query and then UNION ALL and then RIGHT JOIN query.
SELECT employee Name, employee.dept_id, department.dept_id, department.dept_name FROM employee FULL OUTER JOIN department ON employee.dept_id=department.dept_id;

-- SELF JOIN, Print all the dept_id that have more than one employees.
SELECT e1.dept_id FROM employee as e1 INNER JOIN employee as e2 ON e1.dept_id=e2.dept_id AND e1.name<>e2.name;

-- MULTIPLE JOINS
SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.id INNER JOIN table3 ON table1.id = table3.id;