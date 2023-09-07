-- Sub query or Nested Query
-- In sub query we pass query on another table
-- below command gives us the name of students who are from Patna, without the use of JOIN clause
SELECT name from student.student_data WHERE city =  (SELECT Cid from student.city WHERE Cname = 'Patna');

-- below command gives us the name of students who are from Patna, with the use of JOIN clause
SELECT name from student.student_data JOIN student.city ON student.student_data.city = student.city.Cid WHERE Cname = 'Patna';

-- EXISTS operator, it is used to check if the sub query returns any value or not, if any single record exists then parent command shows the result
SELECT name from student.student_data WHERE EXISTS (SELECT Cid from student.city WHERE Cname = 'Patna');
-- above command returns all the names of student_data if nested command returns even a single record

-- NOT EXISTS operator, it is used to check if the sub query returns any value or not, if no single record exists then parent command shows the result
-- SELECT columns from table1 WHERE NOT EXISTS (select columns from table2 where condition);