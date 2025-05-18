USE WKdzik;
GO
CREATE TABLE Supplier (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    Name TEXT NOT NULL,
    ContactPerson Text NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email TEXT NOT NULL,
    Address TEXT NOT NULL
);

CREATE TABLE Delivery (
    DeliveryID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierID INT NOT NULL,
    DeliveryDate DATE NOT NULL,
    TotalCost FLOAT NOT NULL,
    Invoice TEXT NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE CASCADE
);

CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    Name TEXT NOT NULL,
    Description TEXT,
    Category TEXT,
    Price FLOAT NOT NULL,
    CurrentStock INT NOT NULL,
    Size TEXT,
    Color TEXT
);

CREATE TABLE DeliveredItem (
    DeliveredItemID INT IDENTITY(1,1) PRIMARY KEY,
    DeliveryID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price FLOAT NOT NULL,
    FOREIGN KEY (DeliveryID) REFERENCES Delivery(DeliveryID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE
);

CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    Name TEXT NOT NULL,
    ShippingAddress TEXT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email TEXT NOT NULL,
    BillingAddress TEXT NOT NULL
);

CREATE TABLE [Order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount FLOAT NOT NULL,
    Status TEXT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE,
);

CREATE TABLE Courier (
    CompanyID INT PRIMARY KEY IDENTITY,
    CompanyName NVARCHAR(255) NOT NULL,
	OrderID INT NOT NULL,
	FOREIGN KEY (OrderID) REFERENCES [Order](OrderID) ON DELETE CASCADE
);

CREATE TABLE Payment (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount FLOAT NOT NULL,
    PaymentMethod TEXT NOT NULL,
    Status TEXT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID) ON DELETE CASCADE,
);

CREATE TABLE OrderItem (
    OrderedID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT NOT NULL,
    OrderID INT NOT NULL,
    Quantity INT NOT NULL,
    Price FLOAT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID) ON DELETE CASCADE
);
