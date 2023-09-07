UPDATE student.student_data SET city = "Delhi", phone="8178538456" where name="adgc";
UPDATE student.student_data SET city = "Lucknow" where name="Adarsh";
UPDATE student.student_data SET age = 23 where name IN ("Sarita","Salman");
UPDATE student.student_data SET city = "Mumbai" where name = "Salman";
COMMIT;

UPDATE employees.employee_data SET salary=salary+500, commission=1000 WHERE job="ANALYST";

-- update table with data from another TABLE
UPDATE emp SET job=(SELECT job FROM emp2 WHERE rownum=1);