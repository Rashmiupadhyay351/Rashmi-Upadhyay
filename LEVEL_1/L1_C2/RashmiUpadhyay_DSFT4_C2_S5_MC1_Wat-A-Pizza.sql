
CREATE DATABASE wat_a_pizza;
use wat_a_pizza;
/* Crust Table */
CREATE TABLE Crust_type(Crust_Choice varchar(100));
INSERT INTO Crust_type VALUES ('Stuffed'),('Cracker'),('Flat Bread'),('Thin'),('Wrap');

/* Toppings Table */
CREATE TABLE topping(ToppingId int, Name varchar(100));
INSERT INTO topping VALUES(1,'Tomato Sauce'),(2,'BBQ Sauce'),(3,'Cheese'),(4,'Chicken'),(5,'Mushroom'),(6,'Onion'), (7,'Pepper'),(8,'Pepperoni'),(9,'Tomatoes'),(10,'Corn');
SELECT * FROM topping;

/* TASK- 1 */

CREATE TABLE Order_details(OrderId int, CustomerId int, PizzaId int, ToppingID_or_Name varchar(100), Size varchar(100), Delivery_type varchar(100),Bill_Amount int);
INSERT INTO  Order_details VALUES(101, 201, 11,'3-Cheese','Small','Dine-in',700),(102,202, 12,'5-Mushroom','Large','Home Delivery',1200), (103,203,13,'10-Corn','Medium','Home Delivery',500),(104,204,14,'6-Onion','Large','Dine-In',670),(105,205,15,'5-Mushroom','Large','Home Delivery',890),(106,203,11,'5-Mushroom','Large','Home Delivery',1050);

/* TASK- 2 */
CREATE TABLE menu(PizzaId int, Pizza_Name varchar(100), Category varchar(100));
INSERT INTO menu VALUES(11,'Golden Corn','Veg'),(12,'Red Peprika','Veg'),(13,'Double Chees','Veg'),(14,'Onion','Veg'),(15,'Crisp Capsicum','Veg'),(16,'Paneer Special','Veg'),(17,'Veg Loaded','Veg');


/* TASK- 3 */
CREATE TABLE Customer_details (CustomerId int, CustomerName varchar(100), Contact int, Address varchar(100));
INSERT INTO Customer_details VALUES(201,'Peter',12345,'London'),(202,'Charles',67567,'Barcelona'),(203,'John',45786,'Florida'),(204,'Anny',34765,'Rome'),(205,'Fanny',98765,'Berlin');

/* TASK-4 */
INSERT INTO  Order_details VALUES(101, 201, 11,'3-Cheese','Small','Dine-in',700),(102,202, 12,'5-Mushroom','Large','Home Delivery',1200), (103,203,13,'10-Corn','Medium','Home Delivery',500),(104,204,14,'6-Onion','Large','Dine-In',670),(105,205,15,'5-Mushroom','Large','Home Delivery',890),(106,203,11,'5-Mushroom','Large','Home Delivery',1050);



/* TASK- 5 */
INSERT INTO menu VALUES (18,'Chicken Barbeue','Non-veg'),(19,'Chicken Dominator','Non-veg');

/* TASK- 6 */
INSERT INTO Crust_type VALUES('Cheese Burst');

/* TASK- 7 */
SELECT * FROM menu;


/* TASK- 8 */
SELECT * FROM order_details WHERE Size='Large'; 

/* TASK- 9 */
SELECT ToppingID_or_Name FROM order_details ;

/* TASK-10 */
SELECT * FROM Order_details WHERE Bill_Amount=(SELECT MAX(Bill_Amount) FROM Order_details);


/* TASK- 11 */
SELECT * FROM Order_details WHERE Delivery_type='Home Delivery';


/* TASK- 12 */
SELECT * , Bill_Amount-(Bill_Amount*0.10) as Total_Bill_After_Discount  FROM Order_details WHERE Size='Large';




