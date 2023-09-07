-- ROLLBACK, revert backs all the UPDATE, INSERT or DELETE command if COMMIT command is not applied after an UPDATE, INSERT or DELETE command.
-- syntax is -> ROLLBACK;

UPDATE student.student_data SET gender= "Female" where name = "adgc";
ROLLBACK;
-- COMMIT, commits an UPDATE, INSERT or DELETE command. This means this command can't be rollbacked. It is used just after an UPDATE, INSERT or DELETE command. So to insure that the command doesn't get affected by any upcoming rollback command in future.
-- syntax is -> COMMIT;