-- LIMIT AND OFFSET
-- LIMIT is used to limit the number of rows returned by a query.
-- OFFSET is used to skip a number of rows before returning the rows.
-- below command will give data of 2 students after skipping row 1.
--SELECT * FROM student.student_data LIMIT 2 OFFSET 3;

SELECT * from student.student_data;
SELECT * from student.student_data WHERE age>=20 ORDER BY name DESC LIMIT 2;
-- below command will first filter rows where city=patna then it will sort these rows on the basis of name then it will choose 1st 3 rows after skipping the 1st row.
SELECT * from student.student_data WHERE city="Patna" ORDER BY name LIMIT 3 OFFSET 1;
SELECT * from student.student_data WHERE city="Patna" ORDER BY name LIMIT 2,3;