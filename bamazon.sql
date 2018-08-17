CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  ItemID INT NOT NULL AUTO_INCREMENT,
  ProductName VARCHAR(100) NOT NULL,
  DepartmentName VARCHAR(100) NULL,
  Price DECIMAL(10,2) NOT NULL,
  StockQuantity INT NOT NULL,
  PRIMARY KEY (ItemID)
);


INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Playstation 4", "Electronics", 379.96, 79);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Coding with JavaScript for Dummies", "Books", 20.47, 186);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Nespresso Inissia", "Kithcen & Dining", 99.00, 21);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("The Family Book", "Books", 8.31, 435);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Monopoly - The Classic Edition", "Toys & Games", 21.97, 25);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Paddington", "DVD & Blu-Ray", 5.00, 87);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Mini fire stick keyboard", "Electronics", 22.94, 120);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("McCafe Premium Roast Ground Coffee 950G", "Grocery", 17.97, 550);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Horizon Zero Dawn - Complete Edition PS4", "Video Games", 29.95, 142);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuantity) VALUES ("Nintendo Switch Console", "Video Games", 379.95, 29);

select * from products;