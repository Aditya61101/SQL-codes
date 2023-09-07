SELECT UPPER(name) FROM `student`.`student_data`;

SELECT LOWER(name) FROM `student`.`student_data`;

-- LENGTH() function returns the length of the string in bytes, CHAR_LENGTH() returns the length of the string in characters.
SELECT id, name, LENGTH(name) FROM `student`.`student_data`;

SELECT CONCAT(name, ' - ', gender, ' + ', roll_no) FROM `student`.`student_data`;

SELECT CONCAT_WS('+',name,gender,roll_no) FROM `student`.`student_data`;

-- LTRIM -> removes spaces from left side of the string
-- RTRIM -> removes spaces from right side of the string
-- TRIM -> removes spaces from both sides of the string

-- POSTIION -> returns the position(as per 1 indexing) of the first occurrence of a substring in a string, it is not case senstitve
SELECT POSITION('t' IN 'Aditya Kumar');
-- INSTR also performs the same operation
SELECT INSTR('Aditya Kumar', 'a');

-- LOCATE same as POSTIION but can also take the starting position as an argument
SELECT LOCATE('a', 'Aditya Kumar', 2);

-- SUBSTRING/SUBSTR/MID -> returns a substring from a string
-- below command returns the substring from 3rd position of 8 length
SELECT SUBSTRING('Aditya Kumar', 3, 8); -- returns 'itya Kuma'

SELECT SUBSTRING('Aditya Kumar', -3, 8); -- returns 'mar'

SELECT SUBSTRING_INDEX('Aditya Kumar','K', 7); -- returns 'Aditya'

-- returns 6 chars from the leftmost side of the string
SELECT LEFT("Aditya Kumar", 6); -- returns 'Aditya'

-- returns 6 chars from the rightmost side of the string
SELECT RIGHT("Aditya Kumar", 6); -- returns ' Kumar'

SELECT REPEAT('Aditya', 3); -- returns 'AdityaAdityaAditya'

SELECT REPLACE('Aditya Kumar', 'Kumar', 'Sharma'); -- returns 'AdityA KumAr'

SELECT REVERSE('Aditya Kumar'); -- returns 'ramuK aytiAd'

SELECT RPAD('Aditya Kumar',20,"-"); -- returns 'Aditya Kumar--------'

SELECT LPAD('Aditya Kumar',20,"-"); -- returns '--------Aditya Kumar'

SELECT STRCMP('Aditya', 'Aditya'); -- returns 0
SELECT STRCMP('Aditya', 'Aditya Kumar'); -- returns -1
SELECT STRCMP('Aditya Kumar', 'Aditya'); -- returns 1

SELECT FIELD("a","d","b","a","d"); -- returns 3, it is case insensitive

SELECT FIND_IN_set("ram","adi,abc,rAm,bcd"); -- returns 3, it is case insensitive

-- SIMILAR TO ROUND
SELECT FORMAT(123456.789,2); -- returns 123,456.79

--HEX -> returns the hexadecimal representation of a string
SELECT HEX("Aditya Kumar"); -- returns 416469747961204b756d6172