-- Create database
CREATE DATABASE InventoryDB;

-- Create tables and insert values
use InventoryDB;

-- Create Inventory table
CREATE TABLE Inventory(
	   InventoryID INT PRIMARY KEY,
    ProductName VARCHAR(200) NOT NULL,
    Quantity VARCHAR (200) NOT NULL
    );
    
-- Insert value into the inventory table
INSERT INTO Inventory(InventoryID, ProductName, Quantity)
VALUES
( 27001, 'Cooking pot', 70),
(91001, 'Storage dishes', 112),
(84001, 'Dish rack', 200),
(84002, 'Blender', 81),
(84003, 'Cooker', 31),
(27002, 'Baking tin' ,136);

-- Create Category table
CREATE TABLE Category(
     CategoryID  INT PRIMARY KEY,
     CategoryName VARCHAR (200) NOT NULL
     );

-- Insert into the Category table
INSERT INTO Category(CategoryID, CategoryName) VALUES
(84, 'Appliances'),
(91, 'Storage'),
(27, 'Cookware');

-- Create Supplier table	
CREATE TABLE Supplier(
      SupplierID INT PRIMARY KEY,
      SupplierName VARCHAR (200) NOT NULL,
      Adress VARCHAR (200) NOT NULL,
      Phone VARCHAR (200)
      );
-- Insert into the Supplier table       
INSERT INTO Supplier(SupplierID, SupplierName, Adress, Phone) VALUES
(26784, 'Bosch', 'Ruiru, Kenya', +2540224378120),
(07284, 'Kenplast', 'Thika, Kenya', +254023470200);

-- Create Orders table
CREATE TABLE Orders(
     OrderID INT PRIMARY KEY,
     InventoryID INT NOT NULL,
	 SupplierID INT NOT NULL,
     Quantity INT NOT NULL,
     FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
     FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Insert into the Orders table
INSERT INTO Orders(OrderID, InventoryID, SupplierID, Quantity) VALUES
(84001-34, 84001, 26784, 12),
(84003-34, 84001, 26784, 8),
(91001-89, 91001, 07284, 50),
(27001-04, 27001, 07284, 78);