-- gives rows whose age is null
SELECT * from student.student_data WHERE age IS NULL;
-- gives names whose age is not null
SELECT name from student.student_data WHERE age IS NOT NULL;