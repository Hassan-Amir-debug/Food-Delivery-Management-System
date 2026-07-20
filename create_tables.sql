CREATE DATABASE FoodDeliveryDB;
USE FoodDeliveryDB;

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

-- Restaurant Table
CREATE TABLE Restaurant (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Cuisine VARCHAR(50),
    Address VARCHAR(255)
);

-- MenuItem Table
CREATE TABLE MenuItem (
    MenuItemID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    RestaurantID INT NOT NULL,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    RestaurantID INT NOT NULL,
    OrderDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
);

-- OrderItem Table
CREATE TABLE OrderItem (
    OrderID INT,
    MenuItemID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, MenuItemID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItem(MenuItemID)
);

-- DeliveryPerson Table
CREATE TABLE DeliveryPerson (
    DeliveryPersonID INT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20)
);

-- Delivery Table
CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY,
    OrderID INT UNIQUE,
    DeliveryPersonID INT,
    DeliveryTime DATETIME,
    Status VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (DeliveryPersonID) REFERENCES DeliveryPerson(DeliveryPersonID)
);

-- Payment Table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    OrderID INT UNIQUE,
    Amount DECIMAL(10,2),
    Method VARCHAR(50),
    Status VARCHAR(50),
    PaymentDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
