use car_sales_data;

/* TASK- 1 */
CREATE TABLE customers (customer_id int, Customer_Name varchar(100), address varchar(100));
Insert INTO customers VALUES(101, 'Adam', 'Bangalore'),(102,'Alex','Delhi'),(103,'Stuart','Rohtak');
SELECT *  FROM customers WHERE address=address;

/* TASK- 2 */
SELECT * FROM Salesperson WHERE First_Name LIKE 'P%' AND First_Name LIKE '__L%';

/* TASK- 3 */
SELECT * FROM Salesperson WHERE City= 'LONDON' OR City= 'San Jose' OR City='Brazil';

/* TASK- 4 */
SELECT * FROM Customer WHERE Name LIKE 'A%' OR Name LIKE 'G%';

/* TASK- 5 */
SELECT City, MAX(Rating) FROM Customer GROUP BY City;

/* TASK- 6 */
SELECT First_Name,City FROM Salesperson WHERE CITY='LONDON' OR City='Barcelona';

/* TASK- 7 */
SELECT * FROM Orders WHERE OrderDate BETWEEN '2020-10-03' AND '2020-12-04';

/* TASK- 8 */
SELECT SUM(Amount) AS'SUM of all Purchases(Amount)' FROM Orders;

/* TASK- 9 */
SELECT COUNT(Rating) FROM Customer WHERE Rating IS NOT NULL;

/* TASK- 10 */
SELECT CONCAT(Name,' ', LastName) FROM Customer;

/* TASK- 11 */
SELECT * FROM Customer WHERE Rating BETWEEN 200 AND 300;

/* TASK- 12 */
SELECT * FROM Customer Order BY Name;

/* TASK- 13 */
SELECT * FROM Orders ORDER BY Amount DESC;

/* TASK- 14 */
SELECT AVG(Amount) AS Average_Amount FROM Orders;

/* TASK- 15 */
SELECT COUNT(Name) AS No_Of_Cutomer, City FROM Customer GROUP BY City;

/* TASK- 16 */
SELECT COUNT(Name) AS No_Of_Cutomer, City FROM Customer GROUP BY City ORDER BY City DESC;

/*TASK- 17 */
SELECT YEAR(OrderDate) AS Year, MONTH(OrderDate) AS Month, OrderId, Amount, OrderDate,CustomerId  From  Orders GROUP BY MONTH=4;

/* TASK- 18 */
SELECT * FROM Orders ORDER BY Amount DESC LIMIT 5;

/* TASK- 19 */
SELECT * FROM Salesperson ORDER BY Commission_Rate DESC LIMIT 1;

/* TASK- 20 */
SELECT * FROM Salesperson ORDER BY Commission_Rate ASC LIMIT 3;



















