DBCC CHECKIDENT ('Supplier', RESEED, 0);
DBCC CHECKIDENT ('Delivery', RESEED, 0);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 0);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);
INSERT INTO Supplier (Name, ContactPerson, Phone, Email, Address) VALUES 
('ABC Supplies', 'John Doe', '123456789', 'abc@example.com', '123 Elm St')
INSERT INTO Delivery (DeliveryDate, TotalCost, Invoice, SupplierID) VALUES
('2024-01-10', 1200, 'invoice_1.pdf', 1)
INSERT INTO DeliveredItem (DeliveryID, ProductID, Quantity, Price) VALUES
(1, 1, 50, 2.50)