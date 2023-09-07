-- IF(for one condition) AND CASE(for more than one condition) clauses

SELECT name, age, IF (age < 18, 'minor', 'adult') AS age_group FROM student.student_data;

--SELECT id, name, percentage AS p, 
--CASE 
  --  WHEN p>=80 AND p<=100 THEN 'Ist Division' 
  --  WHEN p>=60 AND p<80 THEN 'IInd Division'
  --  WHEN p>=40 AND p<60 THEN 'IIIrd Division'
  --  ELSE 'Fail'
--END AS Grade 
--FROM student.student_data;

-- CASE statement with UPDATE command
-- UPDATE student.student_data SET percentage = (
-- CASE id WHEN 3 THEN 39 
--  WHEN 3 THEN 40 
-- END) WHERE id IN (3,7);