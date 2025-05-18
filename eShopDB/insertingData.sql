USE WKdzik;
GO
INSERT INTO Supplier (Name, ContactPerson, Phone, Email, Address) VALUES 
('ABC Supplies', 'John Doe', '123456789', 'abc@example.com', '123 Elm St'),
('XYZ Wholesalers', 'Jane Smith', '987654321', 'xyz@example.com', '456 Oak St'),
('Healthy Foods', 'Alice Brown', '555555555', 'healthy@example.com', '789 Maple St'),
('Fitness Gear Co.', 'Robert White', '444444444', 'fitgear@example.com', '321 Birch St'),
('Organic Goods', 'Emily Davis', '666666666', 'organic@example.com', '654 Cedar St'),
('Bulk Buyers', 'Michael Green', '777777777', 'bulk@example.com', '987 Pine St'),
('Wellness Warehouse', 'Laura Black', '888888888', 'wellness@example.com', '432 Fir St'),
('Global Imports', 'Daniel Gray', '999999999', 'global@example.com', '111 Palm St'),
('Local Suppliers', 'Sophia Wilson', '222222222', 'local@example.com', '222 Cherry St'),
('Premier Partners', 'Ryan Moore', '333333333', 'premier@example.com', '333 Spruce St');
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO Product (Name, Description, Category, Price, CurrentStock, Color, Size) VALUES
('Protein Bar', 'Healthy snack', 'Food', 2.99, 100, 'Brown', 'N/A'),
('Whey Protein', 'Muscle builder', 'Supplements', 49.99, 50, 'White', 'N/A'),
('Gym Towel', 'Absorbent towel', 'Accessories', 9.99, 200, 'Blue', 'L'),
('Yoga Mat', 'Comfortable mat', 'Accessories', 19.99, 80, 'Green', 'M'),
('Dumbbell Set', 'Adjustable weights', 'Equipment', 99.99, 30, 'Black', 'N/A'),
('Running Shoes', 'Comfortable fit', 'Clothing', 59.99, 60, 'White', '42'),
('Resistance Bands', 'Multi-level bands', 'Accessories', 14.99, 120, 'Red', 'N/A'),
('Kettle Bell', 'Strength training', 'Equipment', 24.99, 40, 'Gray', '10kg'),
('Healthy Snack Pack', 'Mixed snacks', 'Food', 5.99, 150, 'Mixed', 'N/A'),
('Pre-Workout Drink', 'Energy boost', 'Supplements', 29.99, 70, 'Yellow', '500ml');
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO Delivery (DeliveryDate, TotalCost, Invoice, SupplierID) VALUES
('2024-01-10', 1200, 'invoice_1.pdf', 1),
('2024-01-11', 1500, 'invoice_2.pdf', 2),
('2024-01-12', 1800, 'invoice_3.pdf', 3),
('2024-01-13', 2000, 'invoice_4.pdf', 4),
('2024-01-14', 2500, 'invoice_5.pdf', 5),
('2024-01-15', 900, 'invoice_6.pdf', 6),
('2024-01-16', 800, 'invoice_7.pdf', 7),
('2024-01-17', 700, 'invoice_8.pdf', 8),
('2024-01-18', 1100, 'invoice_9.pdf', 9),
('2024-01-19', 1000, 'invoice_10.pdf', 10),
('2024-01-20', 950, 'invoice_11.pdf', 1),
('2024-01-21', 850, 'invoice_12.pdf', 2),
('2024-01-22', 1150, 'invoice_13.pdf', 3),
('2024-01-23', 1250, 'invoice_14.pdf', 4),
('2024-01-24', 1350, 'invoice_15.pdf', 5),
('2024-01-25', 1450, 'invoice_16.pdf', 6),
('2024-01-26', 1550, 'invoice_17.pdf', 7),
('2024-01-27', 1650, 'invoice_18.pdf', 8),
('2024-01-28', 1750, 'invoice_19.pdf', 9),
('2024-01-29', 1850, 'invoice_20.pdf', 10);

DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO DeliveredItem (DeliveryID, ProductID, Quantity, Price) VALUES
(1, 1, 50, 2.50),
(1, 2, 30, 40.00),
(2, 3, 100, 8.00),
(2, 4, 70, 15.00),
(3, 5, 20, 90.00),
(3, 6, 40, 50.00),
(4, 7, 60, 12.00),
(4, 8, 30, 22.00),
(5, 9, 100, 5.00),
(5, 10, 50, 25.00),
(6, 1, 40, 2.40),
(6, 2, 20, 39.00),
(7, 3, 80, 7.80),
(7, 4, 60, 14.80),
(8, 5, 25, 89.00),
(8, 6, 30, 48.00),
(9, 7, 50, 11.50),
(9, 8, 20, 21.50),
(10, 9, 90, 4.80),
(10, 10, 40, 24.50);

DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO Customer (Name, ShippingAddress, Phone, Email, BillingAddress) VALUES
('Alice Smith', '123 Pine St', '987654321', 'alice@example.com', '123 Pine St'),
('Bob Johnson', '456 Oak St', '123123123', 'bob@example.com', '456 Oak St'),
('Charlie Brown', '789 Maple St', '555555555', 'charlie@example.com', '789 Maple St'),
('Diana Ross', '321 Birch St', '444444444', 'diana@example.com', '321 Birch St'),
('Ethan Hunt', '654 Cedar St', '666666666', 'ethan@example.com', '654 Cedar St'),
('Fiona Apple', '987 Pine St', '777777777', 'fiona@example.com', '987 Pine St'),
('George Clooney', '432 Fir St', '888888888', 'george@example.com', '432 Fir St'),
('Hannah Montana', '111 Palm St', '999999999', 'hannah@example.com', '111 Palm St'),
('Isla Fisher', '222 Cherry St', '222222222', 'isla@example.com', '222 Cherry St'),
('Jack Black', '333 Spruce St', '333333333', 'jack@example.com', '333 Spruce St');

DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);


INSERT INTO "Order" (CustomerID, OrderDate, TotalAmount, Status) VALUES
(1, '2024-02-01', 200, 'Prepared'),
(2, '2024-02-02', 150, 'Sent'),
(3, '2024-02-03', 300, 'Collected'),
(4, '2024-02-04', 100, 'Prepared'),
(5, '2024-02-05', 250, 'Sent'),
(6, '2024-02-06', 180, 'Collected'),
(7, '2024-02-07', 220, 'Prepared'),
(8, '2024-02-08', 140, 'Sent'),
(9, '2024-02-09', 260, 'Collected'),
(10, '2024-02-10', 310, 'Prepared'),
(1, '2024-02-11', 190, 'Prepared'),
(2, '2024-02-12', 170, 'Sent'),
(3, '2024-02-13', 290, 'Collected'),
(4, '2024-02-14', 110, 'Prepared'),
(5, '2024-02-15', 240, 'Sent'),
(6, '2024-02-16', 170, 'Collected'),
(7, '2024-02-17', 200, 'Prepared'),
(8, '2024-02-18', 160, 'Sent'),
(9, '2024-02-19', 250, 'Collected'),
(10, '2024-02-20', 300, 'Prepared');
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO OrderItem (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 10, 2.99),
(1, 2, 5, 49.99),
(2, 3, 15, 9.99),
(2, 4, 8, 19.99),
(3, 5, 2, 99.99),
(3, 6, 4, 59.99),
(4, 7, 12, 14.99),
(4, 8, 6, 24.99),
(5, 9, 18, 5.99),
(5, 10, 7, 29.99),
(6, 1, 8, 2.99),
(6, 2, 3, 49.99),
(7, 3, 20, 9.99),
(7, 4, 10, 19.99),
(8, 5, 3, 99.99),
(8, 6, 6, 59.99),
(9, 7, 8, 14.99),
(9, 8, 4, 24.99),
(10, 9, 10, 5.99),
(10, 10, 5, 29.99);
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO Courier (CompanyName, OrderID) VALUES
('FastCourier', 1),
('SpeedyDeliveries', 2),
('ReliableShipping', 3),
('ExpressTransport', 4),
('QuickShip', 5),
('PriorityCourier', 6),
('GlobalShipping', 7),
('LocalLogistics', 8),
('SwiftDeliveries', 9),
('NextDayExpress', 10);
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 0);
INSERT INTO Payment (OrderID, PaymentDate, Amount, PaymentMethod, Status) VALUES
(1, '2024-02-01', 200, 'Credit Card', 'Paid'),
(2, '2024-02-02', 150, 'Bank Transfer', 'Paid'),
(3, '2024-02-03', 300, 'Blik', 'Paid'),
(4, '2024-02-04', 100, 'Credit Card', 'Pending'),
(5, '2024-02-05', 250, 'Platnosci24', 'Paid'),
(6, '2024-02-06', 180, 'Blik', 'Failed'),
(7, '2024-02-07', 220, 'Credit Card', 'Paid'),
(8, '2024-02-08', 140, 'Bank Transfer', 'Pending'),
(9, '2024-02-09', 260, 'Blik', 'Paid'),
(10, '2024-02-10', 310, 'Platnosci24', 'Paid'),
(11, '2024-02-11', 190, 'Credit Card', 'Paid'),
(12, '2024-02-12', 170, 'Bank Transfer', 'Paid'),
(13, '2024-02-13', 290, 'Blik', 'Paid'),
(14, '2024-02-14', 110, 'Credit Card', 'Pending'),
(15, '2024-02-15', 240, 'Platnosci24', 'Paid'),
(16, '2024-02-16', 170, 'Blik', 'Failed'),
(17, '2024-02-17', 200, 'Credit Card', 'Paid'),
(18, '2024-02-18', 160, 'Bank Transfer', 'Pending'),
(19, '2024-02-19', 250, 'Blik', 'Paid'),
(20, '2024-02-20', 300, 'Platnosci24', 'Paid');
DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);