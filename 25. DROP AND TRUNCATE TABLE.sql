-- DROP AND TRUNCATE TABLE

-- REMOVES THE DATA OF THE TABLES ALONG WITH TABLE STRUCTURE
DROP TABLE "emp";

-- ONLY DELETES THE DATA OF THE TABLE NOT STRUCTURE
TRUNCATE TABLE "wp_commentmeta";

-- FLASHBACK COMMAND, to restore a dropped table

-- PURGE COMMAND, to remove the table from recycle bin

--TRUNCATE VS DELETE: TRUNCATE is faster than DELETE as it doesn't generate rollback data, it also doesn't fire any triggers. TRUNCATE is a DDL command and DELETE is a DML command.