-- AGGREGATE FUNCTIONS
-- COUNT, to count the no. rows of a column
-- SUM, to sum the values of a column
-- AVG, to calculate the average of a column
-- MIN, to find the minimum value of a column
-- MAX, to find the maximum value of a column
-- GROUP BY, to group the results of a query
-- NULL is ignored by all these functions, to include it we use COUNT(*)
SELECT COUNT(name) from student.student_data;
SELECT SUM(age) from student.student_data;
SELECT AVG(age) from student.student_data;
SELECT MIN(age),name,city from student.student_data;
SELECT MAX(age),name,city from student.student_data;
SELECT count(distinct city) as city from student.student_data;

-- GROUP BY clause is used in conjunction with the select statement and the aggregate functions to group the result-set by one or more columns. With this, we either write aggregate function or a column which is used in group by.

-- find maximum in every subject.
SELECT subject, MAX(marks) from student.student_marks GROUP BY subject;

--GROUP BY clause is used in conjunction with the select statement and the aggregate functions to group the result-set by one or more columns.

--GROUP BY clause with 1 table.
SELECT city, COUNT(city) AS Total from student.student_data GROUP BY city;

-- GROUP BY clause with 2 tables.
SELECT c.Cname, COUNT(sd.city) AS Total from student.student_data sd INNER JOIN student.city c ON sd.city=c.cid 
WHERE sd.age>=20 GROUP BY city ORDER BY COUNT(sd.city);

--HAVING clause is a filtering clause which is applied on the result provided by GROUP BY clause. To select particular rows from grouped data. Can be used only with SELECT and GROUP BY command.
SELECT c.Cname, COUNT(sd.city) AS Total from student.student_data sd INNER JOIN student.city c ON sd.city=c.cid 
WHERE sd.age>=20 GROUP BY city HAVING Total > 1 ORDER BY COUNT(sd.city);

-- command to give count of duplicate rows of a column
SELECT JOB, COUNT(*) FROM emp GROUP BY JOB HAVING COUNT(*)>1;

-- find sum of marks of students having sum more than 150.
select name, sum(marks) as totalM from student group by(name) having sum(marks)>150;