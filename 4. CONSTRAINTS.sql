-- Constraints : NOT NULL, UNIQUE, DEFAULT, CHECK, FOREIGN KEY, PRIMARY KEY.
use student;
--  CREATE TABLE student_data(
--     id INT NOT NULL UNIQUE,
--     name VARCHAR(50) NOT NULL,
--     age INT NOT NULL CHECK (age>=18),
--     gender VARCHAR(10) NOT NULL,
--     phone VARCHAR(10) NOT NULL UNIQUE,
--     city VARCHAR(10) NOT NULL DEFAULT 'Patna'
--  );
insert into student_data(id, name, age, gender, phone) VALUES(2,"adgc",20,"MALE","8178345543"),(3,"Adarsh",21,"MALE","9602414566");