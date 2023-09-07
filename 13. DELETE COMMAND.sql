-- below will delete all the records/rows since no condition is used
DELETE FROM student.student_data;

-- below will delete the record/row in which name col values is Salman
DELETE FROM student.student_data WHERE name="Salman";

-- below will delete the records/rows in which gender=Male
DELETE FROM student.student_data WHERE gender IN ("M","Male");

-- TRUNCATE can't be ROLLBACK, it is faster than DELETE, it is used to delete "all" the records/rows from the table
TRUNCATE FROM student.student_data;