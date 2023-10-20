
create database EntityRelationship;
use EntityRelationship;

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Inserting data into the Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, ZipCode)
VALUES
    (1, 'Kaidhathuli', 'priyanka', 'Kaidhathulipriyanka@gmail.com', '8179664954', '19-4-376', 'Tirupathi', 'AP', '517501'),
    (2, 'Padiri', 'Yathish', 'Yathishkumar25@gmail.com', '630771234', '19-4-372', 'Tirupathi', 'AP', '517501'),
    (3, 'naravula', 'Prasanya', 'Naravulaprasanya@gmail.com', '9177058237', '19-4-370', 'Tirupathi', 'AP', '517501');


-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20),
    PaymentMethod VARCHAR(50),
    CustomerID INT, -- Foreign Key
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Inserting sample data into the Orders table
INSERT INTO Orders (OrderID, OrderDate, TotalAmount, Status, PaymentMethod, CustomerID)
VALUES
    (1, '2023-10-20', 100.50, 'Pending', 'Credit Card', 1),  
    (2, '2023-10-21', 75.25, 'Shipped', 'PayPal', 2),       
    (3, '2023-10-22', 200.00, 'Delivered', 'Cash', 1);       

	select *from Orders;
	select *from Customer;
