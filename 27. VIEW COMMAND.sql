-- VIEW COMMAND, to save, modify, delete command.
use student;
-- CREATE/SAVE A VIEW
CREATE VIEW stud_inner_join AS SELECT * FROM student_data sd INNER JOIN city c ON sd.city = c.Cid;

-- TO USE THAT VIEW
SELECT * FROM stud_inner_join;

-- TO DELETE A VIEW
DROP VIEW stud_inner_join;

-- TO MODIFY/(CREATE OR REPLACE VIEW) A VIEW
ALTER VIEW stud_inner_join AS SELECT * FROM student_data sd INNER JOIN city c ON sd.city = c.Cid;

-- TO RENAME A VIEW
RENAME TABLE stud_inner_join TO stud_inner_join_view;