/* TASK-1, TASK-2, TASK-3, TASK-4 */

USE Car_Sales_Data;
CREATE TABLE Car_Sales_Data (Sales_ID int, First_Name varchar(100), City Varchar(100), Commission_Rate int);
INSERT INTO Car_Sales_Data Values(1002, 'Peter', 'LONDON',12),(1002, 'Peter', 'LONDON',12), (1003,'Rifkin','Barcelona',15),(1004,'Judith','LONDON',11),(1008,'John','LONDON',0),(1009, 'Charles','Florida',Null),(1009, 'Charles','Florida',NULL),(1004,'Judith','LONDON',11),(1004,'Judith','LONDON',11),(1003,'Rifkin','Barcelona',15),(1003,'Rifkin','Barcelona',15),(1003,'Rifkin','Barcelona',15),(1001,'Serres','San Jose',13),(1001,'Serres','San Jose',13),(1009, 'Charles','Florida',NULL),(1008,'John','LONDON',0),(1008,'John','LONDON',0);
Select * from Car_Sales_Data;