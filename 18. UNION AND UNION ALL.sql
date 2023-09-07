-- UNION AND UNION ALL
-- UNION is used to combine the results of two or more SELECT statements, it will not show the duplicate record if all its shown columns are same.
SELECT city FROM student.student_data UNION SELECT Cid FROM student.city;

-- UNION ALL is used to combine the results of two or more SELECT statements, it will show the duplicate record even if all its shown columns are same.
SELECT city, name FROM student.student_data UNION ALL SELECT * FROM student.city;

-- NOTE: EACH SELECT statement within UNION ALL OR UNION must have the same number of columns.
