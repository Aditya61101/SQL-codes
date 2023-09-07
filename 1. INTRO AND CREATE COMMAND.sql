-- command to create a database name student, command can also be in lowercase as SQL is case insensitive
CREATE DATABASE student;

-- Data Types : INTEGER, REAL, TEXT, BLOB, NUMERIC, DATE, TIME, DATETIME, TIMESTAMP, BOOLEAN, CHAR, VARCHAR, NCHAR, NVARCHAR, CLOB, BLOB, BINARY, VARBINARY, DECIMAL, NUMERIC, FLOAT, DOUBLE, INT, INTEGER, TINYINT, SMALLINT, MEDIUMINT, BIGINT, UNSIGNED BIG INT, INT2, INT8, CHARACTER(20), VARCHAR(255), VARYING CHARACTER(255), NCHAR(55), NATIVE CHARACTER(70), NVARCHAR(100), TEXT, CLOB, BLOB, BINARY, VARBINARY, REAL, DOUBLE PRECISION, FLOAT, NUMERIC, DECIMAL(10,5), BOOLEAN, DATE, DATETIME, TIMESTAMP, TIME, INTERVAL, YEAR, CHAR(5), CHARACTER VARYING(255), CHARACTER(20) CHARACTER SET utf8 COLLATE utf8_general_ci, VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci, TINYBLOB, TINYTEXT, BLOB, TEXT, MEDIUMBLOB, MEDIUMTEXT, LONGBLOB, LONGTEXT, ENUM('value1', 'value2', 'value3'), SET('value1', 'value2', 'value3').

-- enum stores a list of values data can be used for that column ex. enum(red, green, blue) means that the column can store red, green, blue or any combination of them as a value, whereas set stores upto 64 values
-- float(p) stores floating point value with same no. of digits on both side of the decimal point.
-- double(size, d), size means no. of digits before decimal point and d means no. of digits after decimal point
-- decimal(size, d), similar to double but has size constraints i.e, max(size)=60 and max(d)=30 
-- DATE -> '1000-01-01' to '9999-12-31'
-- DATETIME -> '1000-01-01 00:00:00' to '9999-12-31 23:59:59'
-- TIME -> hh:mm:ss
-- YEAR: four-digit-number

-- command to start working on the database named student
use student;

-- create a table
CREATE TABLE personal(
id INT,
name VARCHAR(50),
birth_date DATE,
phone BIGINT,
gender VARCHAR(1)
);

-- number(7,2) => 7 is the total no. of digits and 2 is the no. of digits after decimal point.

-- DESC Command: to see the structure of the table.

-- creating a new table from an existing table
CREATE TABLE personal2 AS (SELECT * FROM personal);

-- creating a new table from an existing table with some constraints/particular rows
CREATE TABLE personal3 AS (SELECT * FROM personal WHERE age>=12);

-- creating a new table from an existing table with some constraints/particular rows and some new columns
CREATE TABLE personal4 AS (SELECT id, name, age, age+10 as ageinc10 FROM personal WHERE age>=12);

-- copying selected columns from multiple tables
CREATE TABLE emp4 AS (SELECT ename,job,sal ,loc,dname FROM emp,dept);

--creating another table from an existing table without any data
CREATE TABLE personal5 AS (SELECT * FROM personal WHERE 1=2);