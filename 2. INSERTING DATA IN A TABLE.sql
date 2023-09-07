use student;

-- TO INSERT DATA INTO TABLE
INSERT INTO personal(id, name, birth_date, phone, gender) VALUES(2,"John","2002-02-15","7004057591","M");

-- DYNAMIC INSERT(using '&'), for inserting value during runtime, order of cols may not be same as in table.
INSERT INTO personal VALUES(&id,"&name","&birth_date",&phone,"F");

-- COPYING DATA FROM ONE TABLE TO ANOTHER
INSERT INTO sample2 SELECT * FROM sample1;

-- COPYING SPECIFIC COLS FROM ONE TABLE TO ANOTHER
INSERT INTO sample2 SELECT id, name, city FROM sample1;

-- COPYING SPECIFIC ROWS FROM ONE TABLE TO ANOTHER
INSERT INTO sample2 SELECT * FROM sample1 WHERE id=1;