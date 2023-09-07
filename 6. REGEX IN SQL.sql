use student;
-- REGULAR EXPERSIONS
-- 1. Find all the words that start with the letter "a" and end with the letter "e"
-- ^ begining of string
-- [a] any letter a
-- [a-z] any letter from a to z
-- [a-z]* any number of letters from a to z
-- [a-z]+ any number of letters from a to z
-- [a-z]{2,} any number of letters from a to z, at least 2
-- [a-z]{2,4} any number of letters from a to z, at least 2, at most 4
-- [a-z]{2} letter from a to z exactly 2 times
-- '+' character one or more than one time
-- '*' character zero or more than one time
-- '?' character zero or one time
-- $ end of string
-- [^a] any character except a
-- [^a-z] any character except a to z
-- p1|p2|p3 any of the patterns p1, p2, p3

SELECT * from student_data WHERE name REGEXP 'ta';
SELECT * from student_data WHERE name REGEXP '^ad';
SELECT * from student_data WHERE name REGEXP 'a$';
SELECT * from student_data WHERE name REGEXP 'a*m|ari|and|ya$';
SELECT * from student_data WHERE name REGEXP '[is]';
SELECT * from student_data WHERE name REGEXP '[^a-s]$';