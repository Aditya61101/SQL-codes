use student;
-- ORDER BY, used for sorting, by default sorts in ascending order ASC-> ascending, DESC-> descending.

-- DISTINCT clause consider NULL to be unique value in SQL.

-- below command will sort the table in ascending order on the basis of name but if for some rows name came out to be same, it will sort them in descending order on the basis of city.
SELECT * from student_data ORDER BY name, city DESC;

-- DISTINCT command returns only unique values present in a column or combination of columns. It doesn't alter the original table.
SELECT DISTINCT city from student_data ORDER BY city;

-- DISTINCT with multiple columns, below command shows rows with unique 'combination' of job and sal.
SELECT DISTINCT job,sal from emp;

-- ORDER BY and WHERE clause
SELECT * from student_data WHERE age>=20 ORDER BY name;