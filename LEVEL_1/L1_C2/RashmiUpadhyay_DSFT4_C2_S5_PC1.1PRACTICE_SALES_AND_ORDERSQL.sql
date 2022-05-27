/* TASK- 1 */

USE Car_Sales_Data;
CREATE TABLE Car_Sales_Data (Sales_ID int, First_Name varchar(100), City Varchar(100), Commission_Rate int);
Insert into Salesperson Values (1001,'PEEI','London', 12),(1002,'Serres','San Jose',13),(1004,'Judith','LONDON',11),(1007,'Rifkin','Barcelona',15),(1003,'axelRod','New York',10),(1004,'FrAN','LONDON',26),(1008, 'JohN','London',0),(1009, 'Charles','Florida',NULL);
select * from car_sales_data;

/* TASK- 2 */
SELECT * FROM Customer order by Name; 
Select * From Salesperson where City='LONDON' ;


/*TASK- 3*/
SELECT * FROM Salesperson WHERE NAME< ANY (SELECT Customer_Name FROM Customers);

/* TASK-4*/
SELECT * FROM Orders ORDER BY Amount DESC;

/* TASK- 5*/
SELECT * FROM Salesperson WHERE First_Name='judith';

/*TASK- 6*/
SELECT  * FROM Salesperson WHERE City NOT IN (SELECT CITY FROM CUSTOMERS);

/* TASK- 7*/
SELECT * FROM Salesperson WHERE City= 'LONDON' OR City= 'San Jose' OR City= 'Barcelona' OR City= 'New York' OR City= 'Florida';

/*TASK- 8*/
Select * from orders WHERE Salespersons= (Select DISTINCT Salespersons FROM ORDERS WHERE CUSTOMER_ID);

/* TASK- 9*/
SELECT COUNT(Name) AS Commissions, City = 'London' FROM Customer GROUP BY City ;

/*TASK- 10*/
SELECT * FROM Salesperson WHERE Commission_Rate >12;

/*TASK- 11*/
Select * FROM Customer INNER JOIN Salesperson ON SALES_ID=SALES_ID WHERE Commission_Rate >12 AND CITY !=CITY;

/*TASK- 12*/
 SELECT * from orders where Amount > (Select avg(amount) 
 from orders where orderdate BETWEEN '2020-10-03' and '2020-10-05');
 
 /*TASK- 13*/
 SELECT * FROM Salespersonn WHERE EXISTS (SELECT * FROM CUSTOMERID WHERE SALESID=SALESID AND 1< 
 (SELECT COUNT (NAME) FROM Orders WHERE CUSTOMERID=CUSTOMERID));
 
 /*TASK- 14*/
 SELECT max(Amount) AS 'Max of all Purchases(Amount)' FROM Orders;

/*TASK- 15*/
SELECT UPPER(First_Name) FROM Salesperson;