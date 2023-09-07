-- primary key has unique non null value data. A table can contain only one primary key.
-- AUTO_INCREMENT -> increments value of the column whenever a new entry is added, usually used for id column.
-- AUTO_INCREMENT -> can be used for only one column in a table.
-- AUTO_INCREMENT -> can be used for only integer columns.

CREATE TABLE student.City(
    Cid INT NOT NULL AUTO_INCREMENT,
    Cname VARCHAR(50) NOT NULL,
    PRIMARY KEY (Cid)
);

-- to make a column a primary key of an existing table
ALTER TABLE student.student_data ADD PRIMARY KEY (id);

-- foreign key is a column or combination of columns that is a primary key in another table.
-- foreign key is used to link two tables together.
-- foreign key is used to prevent actions that would destroy links between tables.
-- foreign key is used to update related fields in other tables when primary key is updated.
-- foreign key is used to delete records in other tables when primary key is deleted.
-- foreign key is used to create relationships between tables.
-- foreign key is used to define and enforce referential integrity between tables.
-- A table can have multiple foreign keys based on the requirement
CREATE TABLE student.student_data(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(1) NOT NULL,
    roll_no VARCHAR(8),
    city INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (city) REFERENCES student.city(Cid)
);

INSERT INTO student.student_data(name, age, gender, roll_no, city) VALUES ('Aditya', 21, 'M', '2001EE85', 1),('adgc',20,'M','2001EE61',2),('Adarsh',21,'M','2001EE84',12),('Rohit',21,'M','2001EE63',3),('Rajat',21,'M','2001EE64',1),('Raj',21,'M','2001EE65',2),('Rashi',23,'F','2001EE66',6),('Sona',22,'F','2001EE67',9),('Rajiv',21,'M','2001EE68',1),('Ananya',24,'F','2001CE71',10);

-- to make a column a FOREIGN key of an existing table
ALTER TABLE student.student_data ADD FOREIGN KEY (city) REFERENCES student.City(Cid);