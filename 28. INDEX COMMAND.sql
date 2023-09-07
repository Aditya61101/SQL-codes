-- INDEX COMMAND
-- Guidelines for creating indexes
-- 1. Automatically creates the indexes for primary key and unique key columns.
-- 2. Create indexes for frequently used columns that are used to retrieve the data.
-- 3. Index cols that are used for joins to improve join performance.
-- 4. Small tables don't require indexes.

-- CREATING A INDEX
-- CREATE INDEX index_name ON table_name (column_name);

-- DELETE A INDEX
-- DROP INDEX index_name ON table_name;

use student;
CREATE INDEX idx_name ON student_data (name);

SHOW INDEX FROM student_data;