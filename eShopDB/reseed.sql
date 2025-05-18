DBCC CHECKIDENT ('Supplier', RESEED, 1);
DBCC CHECKIDENT ('Delivery', RESEED, 1);
DBCC CHECKIDENT ('Product', RESEED, 1);
DBCC CHECKIDENT ('DeliveredItem', RESEED, 1);
DBCC CHECKIDENT ('Customer', RESEED, 1);
DBCC CHECKIDENT ('[Order]', RESEED, 1);
DBCC CHECKIDENT ('OrderItem', RESEED, 1);
DBCC CHECKIDENT ('Courier', RESEED, 1);
DBCC CHECKIDENT ('Payment', RESEED, 1);

SELECT IDENT_CURRENT('Supplier') AS NextSupplierID;
SELECT IDENT_CURRENT('Delivery') AS NextDeliveryID;
SELECT IDENT_CURRENT('Product') AS NextProductID;
SELECT IDENT_CURRENT('DeliveredItem') AS NextDeliveredItemID;
SELECT IDENT_CURRENT('Customer') AS NextCustomerID;
SELECT IDENT_CURRENT('[Order]') AS NextOrderID;
SELECT IDENT_CURRENT('OrderItem') AS NextOrderItemID;
SELECT IDENT_CURRENT('Courier') AS NextCourierID;
SELECT IDENT_CURRENT('Payment') AS NextPaymentID;
