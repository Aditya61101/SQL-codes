-- ALTER COMMAND, changes in COLUMNs
-- FEATURES OF ALTER COMMAND
-- 1. ADD COLUMN IN A TABLE
-- 2. CHANGING DATA TYPE, DATA TYPE SIZE OF A COLUMN
-- 3. RENAME A COLUMN
-- 4. ADDING CONSTRAINTS TO A COLUMN
-- 5. CHANGING COLUMN POSITION
-- 6. DELETE COLUMN
-- 7. RENAME A TABLE

-- 1. ADD COLUMN IN A TABLE
ALTER TABLE student.student_data ADD percentage FLOAT;

-- 2. CHANGING DATA TYPE OF A COLUMN
ALTER TABLE table_name MODIFY column_name data_type;

-- 4. ADDING CONSTRAINTS TO A COLUMN
ALTER TABLE table_name ADD TYPE_OF_CONSTRAINT (col_name);

-- TYPE OF CONSTRAINTS: -
-- 1. NOT NULL
-- 2. UNIQUE
-- 3. PRIMARY KEY
-- 4. FOREIGN KEY
-- 5. CHECK
-- 5. CHANGING COLUMN POSITION

-- ALTER TABLE student.student_data MODIFY column_name modify data_type/modify data size;

-- 6. DELETE COLUMN
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE table_name DROP COLUMN column_name1, column_name2;

-- 7. RENAME A TABLE
RENAME table_name TO new_table_name;

-- 8. RENAME A COLUMN
ALTER TABLE table_name RENAME old_column_name TO new_column_name;

-- ALTER TABLE table_name AUTO_INCREMENT = 4;

-- Adding multiple cols at once
ALTER TABLE student.student_data ADD percentage FLOAT, age INT, father_name VARCHAR(20);

-- adding col with a default value
ALTER TABLE student.student_data ADD percentage FLOAT DEFAULT 0.0;

-- dropping a CONSTRAINT
ALTER TABLE student.student_data DROP CONSTRAINT percentage;