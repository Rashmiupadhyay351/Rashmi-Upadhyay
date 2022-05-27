/* TASK- 1  */
CREATE DATABASE ABC_Inc; 

/* TASK- 2 */
use abc_inc;
Create table A_SQL (Employee_Id int, Age int, Proficiency_Range int);
Create table B_Oracle (Employee_Id int, Age int, Proficiency_Range int);
Create table C_HTML (Employee_Id int, Age int, Proficiency_Range int);


/* TASK- 3 */
INSERT INTO A_SQL VALUES (1, 22, 2),(2 , 25, 5),(3, 23, 3),(4, 20, 1),(5, 24, 4);
INSERT INTO B_Oracle VALUES (1, 30, 4),(2 , 29, 3),(3, 33, 4),(4, 35, 5),(5, 21, 1);
INSERT INTO C_HTML VALUES (1, 26, 3),(2 , 30, 4),(3, 28, 2),(4, 23, 1),(5, 34, 5);
Select * from A_SQL;
Select * from B_Oracle;
Select * from C_HTML;

/* TASK- 4 */
ALTER TABLE B_Oracle RENAME TO B_SQL;

/*  TASK- 5 */
TRUNCATE TABLE B_SQL;
SELECT * FROM B_SQL;
INSERT INTO B_SQL SELECT * FROM  A_SQL WHERE (EMPLOYEE_ID<=3) ; 
SELECT * FROM B_SQL;


/*TASK- 6*/
DROP TABLE C_HTML;

/*TASK- 7*/
USE ABC_Inc;
CREATE TABLE  IF NOT EXISTS AB_SQL SELECT * FROM a_sql;
Select * from b_sql, ab_sql;





