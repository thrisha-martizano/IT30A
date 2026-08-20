

CREATE DATABASE <database_name>;
SHOW DATABASES;
CONNECT  <database_name>;
CREATE TABLE <table_name_in_plural> ();
INSERT INTO <table_name_in_plural> 
    (columns) 
    (VALUES)values;

Utility Commands
\! cls


mysqldump -u root -p --databases lib_db > C:\Users\Admin\Documents\DEV-IT30A\it30a\backups\08182026_lib_db.sql
mysqldump -u root -p --databases lib_db > C:\Users\Thrisha Mae\OneDrive\Documents\DEV-IT30A\backups\08182026_library_db.sql


mysqldump -u root -p --databases library_db > "C:\Users\Thrisha Mae\OneDrive\Documents\DEV-IT30A\IT30A\backups\%date:~-4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_library_db.sql"
 
LABORATORY #2
alter table students MODIFY COLUMN student_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
update students SET student_created_at = CURRENT_TIMESTAMP WHERE student_created_at IS NULL;

SHOW TABLES
Describe STUDENTS