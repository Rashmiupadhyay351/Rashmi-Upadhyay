/* TASK-1, TASK-2, TASK-3 AND TASK-5 */
CREATE DATABASE Car_Sales_Data; 
use Car_Sales_Data;
CREATE TABLE Salesperson (SalesID int, First_Name varchar(100) NOT NULL, City varchar (100), Commission_Rate int, PRIMARY KEY (SalesID));
CREATE TABLE Customer (CustomerId int, Name varchar(100) NOT NULL, LastName varchar(100) NOT NULL, City varchar (100) NOT NULL,Rating int NOT NULL, SalesId int NOT NULL, PRIMARY KEY (CustomerId));
CREATE TABLE Orders (OrderId int, Amount int NOT NULL, OrderDate Date NOT NULL, CustomerId int NOT NULL, PRIMARY KEY (OrderId));

/* TASK-4 */
 
 INSERT INTO Salesperson Values (1002, 'Peter','LONDON', 12), (1003, 'Rifkin','Barcelona', 15), (1004, 'Judith', 'LONDON', 11), (1008, 'John','LONDON',0), (1009,'Charles', 'Florida', Null);
 
 /* TASK- 6*/
 INSERT INTO Customer Values (2001, 'hoffmaN', 'Anny', 'London', 100,1001), (2002, 'GlovanNI', 'JeNNy','Rome',200,1003), (2003,'Liu', 'wiLLiams', 'San Jose',100, 1002),(2004, 'GraSS','HarrY','Berlin',300,1002),(2005,'ClemeNS','JoHN', 'London',200,1001), (2006,'cisneros','FannY', 'San Jose', 200, 1007), (2007, 'Pereira','JonaTHAN', 'Rome',300,1004);
 
 /* TASK-7 */
 INSERT INTO Orders Values (3001,123, '2020-02-01', 2008),(3003,187,'2020-10-02',2001), (3002, 100,'200-07-30',2007),(3005, 201, '2011-10-5',2003), (3009, 145,'2012-10-10',2008),(3007, 167,'2020-4-2',2002),(3008,189,'2020-3-6',2002),(3010, 200,'2012-02-23',2006),(3011,100,'2000-9-18',2004);


/* TASK- 8*/
DELETE FROM Orders WHERE OrderId=3011;

/* TASK- 9 */ 
DELETE FROM Salesperson WHERE Commission_Rate = 0 ;

/* TASK- 10 */
/* There is no such amount which is less than 100 */

/* TASK- 11 */
CREATE TABLE IF NOT EXISTS Customer (CustomerId int, Name varchar(100) NOT NULL, LastName varchar(100) NOT NULL, City varchar (100) NOT NULL,Rating int NOT NULL, SalesId int NOT NULL, index rating_index(Rating));

/* TASK - 12 */
/* There is no such Salesperson whose commission rate is 26. */

/* TASK- 13 */
set sql_safe_updates =0;
UPDATE  Customer set Rating = 150 WHERE Rating = 100;



