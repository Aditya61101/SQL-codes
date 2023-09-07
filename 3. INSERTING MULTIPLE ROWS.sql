use student;
INSERT INTO personal(
id, name, birth_date, phone, gender
) VALUES (3,"John","2003-12-19", "8578345567","M"), (4,"Adarsh","2000-10-31","9602456767","M");

--INSERT ALL IN ONE TABLE
INSERT ALL INTO personal (id, name, birth_date, phone, gender) VALUES (3,"John","2003-12-19", "8578345567","M") INTO personal (id, name, birth_date, phone, gender) (4,"Adarsh","2000-10-31","9602456767","M");

--INSERT ALL IN DIFFERENT TABLES
INSERT ALL INTO personal (id, name, birth_date, phone, gender) VALUES (3,"John","2003-12-19", "8578345567","M") INTO personal (id, name, birth_date, phone, gender) (4,"Adarsh","2000-10-31","9602456767","M") INTO personal2 (id, name, birth_date, phone, gender) (1,"Aditya","2001-1-15","7004057591","M");