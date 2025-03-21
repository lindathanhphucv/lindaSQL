CREATE DATABASE LindaEcommerceStore;
USE LindaEcommerceStore;
    DEFAULT CHARACTER SET = 'utf8mb4';

-- /*Create Customers Table*/
-- CREATE TABLE Customers (
--     CustomerID int,
--     LastName varchar (255),
--     FirstName varchar (255),
--     Gender varchar (255),
--     City varchar (255)
-- );

-- /*Insert Customer Information*/
-- INSERT INTO Customers (CustomerID, LastName, FirstName, Gender, City)
-- VALUES (1,'GUINESS', 'PENELOPE', 'MALE', 'NEWCASTLE'), (2,'BERRY','CHRISTOPHER','MALE','MANCHESTER'), (3, 'VOIGHT', 'HELEN', 'FEMALE', 'LONDON'), (4, 'TRACY', 'LUCILLE', 'FEMALE', 'BIRMINGHAM'), (5, 'BLOOM', 'KEVIN', 'MALE', 'CHESTER'), (6, 'MCQUEEN', 'JULIA', 'FEMALE', 'DURHAM'), (7, 'HACKMAN', 'TIM', 'MALE', 'BRISTOL'), (8, 'BARRYMORE', 'ROSIE', 'FEMALE', 'LEEDS'), (9, 'CRONYN', 'ANNE', 'FEMALE', 'YORK'), (10, 'HOPKINS', 'NATALIE', 'FEMALE', 'LONDON'), (11, 'TANDY', 'MARY', 'FEMALE', 'LONDON'), (12, 'MCCONAUGHEY', 'MICHELLE', 'FEMALE', 'NEWCASTLE'), (13, 'ASTAIRE', 'ANGELINA', 'FEMALE', 'DURHAM'), (14, 'JOLIE', 'WOODY', 'MALE', 'MAMCHESTER'), (15,'HAWKE', 'MEG', 'FEMALE', 'LONDON');

/*Create Inventory Table*/
USE LindaEcommerceStore;
CREATE TABLE Inventory(
    ProductID int,
    ProductCategory varchar (255),
    ProductName varchar (255),
    StockQuantity int
);
/*add ProductPrice to Inventory Table*/
ALTER TABLE Inventory
ADD ProductPrice int;

-- -- /*Insert Inventory Information*/
INSERT INTO Inventory (ProductID,ProductCategory,ProductName,ProductPrice,StockQuantity)
VALUES (1, 'top','T-shirt',20, 1500),(2,'bottom','Jeans',40,2000),(3,'bottom','Skirt',30,1500),(4,'top','Shirt',20,2000),(5, 'bottom','Shortpant',30,1000),(6,'shoes','trainer',60,1000),(7,'shoes','loafer',80,500),(8,'shoes','sneaker',80,500),(9,'accesories','hat',10,300),(10,'accessories','earing',10,500),(11,'accessories','belt',20,300);

/*Delate NULL from the table*/
-- DELETE FROM Inventory WHERE ProductPrice IS NULL;

/*Create Sale Transaction Table*/
USE LindaEcommerceStore;
CREATE TABLE SaleTransaction (
    Orderid int,
    Customerid int,
    ProductID int,
    Quantity int
);
ALTER TABLE SaleTransaction
ADD SaleRevenue int;

-- /*Insert information to SaleTransaction Table*/

INSERT INTO SaleTransaction (Orderid, Customerid, ProductID, Quantity)
VALUES (1,5,6,2),(2,10,7,3),(3,10,9,2),(4,12,11,2),(5,9,8,1),(6,6,4,2),(7,4,6,2),(8,11,5,1),(9,15,8,3),(10,14,5,2),(11,13,2,4),(12,10,6,6),(13,9,9,4),(14,11,10,5),(15,12,5,6),(16,8,2,3);

-- /*join Inventory table to sale trantraction*/
-- USE LindaEcommerceStore;
-- SELECT ProductName, ProductPrice, StockQuantity
-- FROM Inventory

-- INSERT INTO table4 (ProductID, ProductPrice, Quantity, StockQuantity)
-- SELECT ProductID, ProductPrice, Quantity, StockQuantity
-- FROM Inventory
-- WHERE ProductID.StockQuantity = ProductID.Quantity
-- SELECT Inventory.ProductPrice, SaleTransaction.Quantity, ProductID.StockQuantity
-- INTO table4
-- FROM Inventory
-- INNER JOIN Quantity ON ProductID.ProductPrice = Quantity = StockQuantity

/*total quantity*/
SELECT ProductID
SUM(Quantity) AS [Quantity]
FROM SaleTransaction
GROUP BY ProductID;


-- SELECT saletransaction
-- FROM Customerid;
