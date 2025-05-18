# 🏋️‍♂️ WK Dzik E-Shop Database System

## 📦 Project Overview

This project presents a relational database system designed for **WK Dzik**, an e-commerce platform selling gym accessories, healthy food, and clothing. The goal is to streamline operations for employees by providing a clear and efficient database system for managing products, deliveries, orders, and payments.

---

## 👥 Users

- **Warehouse Workers** – Check stock, manage deliveries.
- **Supplier Team** – Oversee incoming supplies and vendors.
- **Customers** – Make purchases via the online platform.
- **Accountants** – Track orders, payments, and generate reports.

---

## 🎯 Purpose

- Store and manage data related to:
  - Products and stock levels
  - Deliveries and suppliers
  - Orders and customers
  - Payments and invoices

- Enable key operational queries and reporting for decision-making and automation.

---

## ✅ Goals

- Provide a structured and reliable database system.
- Simplify everyday operations across departments.
- Enable real-time access to product and transaction information.

---

## 📌 Use Scenarios

- Search for specific products and check stock.
- View delivery history from suppliers.
- Generate monthly and yearly reports.
- Track customer payments and top spenders.

---

## ⚠️ Assumptions & Limitations

- Only one warehouse location is considered.
- Product prices are fixed (no sales or discounts).
- Basic customer data only (no purchase history or demographic data).
- No recommendation or marketing features included.

---

## 🔍 Sample Queries

- List all products with stock levels below 10 units.
- Which products had the most deliveries in the last month?
- What were the total sales for October?
- Who are the top 10 customers by spending in the last year?
- List all deliveries from **ABC Publishing** in the past quarter.
- Which supplier provides the most products to the shop?
- What is the average order value for all customers?

---

## 🗂️ Entity Descriptions

### Delivery
Represents a delivery from a supplier.  
Approx. 500 entries.
- `DeliveryID` (INT, PK)
- `SupplierID` (INT, FK)
- `DeliveryDate` (INT)
- `TotalCost` (INT)
- `Invoice` (TEXT)

### Supplier
Suppliers of products.  
Approx. 50 entries.
- `SupplierID` (INT, PK)
- `Name` (TEXT)
- `ContactPerson` (TEXT)
- `Phone` (VARCHAR)
- `Email` (TEXT)
- `Address` (TEXT)

### DeliveredItem
Items delivered by suppliers.
- `DeliveredItemID` (INT, PK)
- `DeliveryID` (INT, FK)
- `ProductID` (INT, FK)
- `Quantity` (INT)
- `Price` (FLOAT)

### Product
Products available in the shop.  
Approx. 100,000 entries.
- `ProductID` (INT, PK)
- `Name` (TEXT)
- `Description` (TEXT)
- `Category` (TEXT)
- `Price` (FLOAT)
- `CurrentStock` (INT)
- `Color` (TEXT)
- `Size` (TEXT)

### OrderItem
Products in customer orders.  
Approx. 5,000,000 entries.
- `OrderItemID` (INT, PK)
- `OrderID` (INT, FK)
- `ProductID` (INT, FK)
- `Quantity` (INT)
- `Price` (FLOAT)

### Order
Customer orders.  
Approx. 1,000,000 entries.
- `OrderID` (INT, PK)
- `CustomerID` (INT, FK)
- `OrderDate` (DATE)
- `TotalAmount` (INT)
- `Status` (TEXT)

### Courier
Courier companies.
- `CompanyID` (INT, PK)
- `CompanyName` (TEXT)

### Payment
Customer payments.  
Approx. 1,000,000 entries.
- `PaymentID` (INT, PK)
- `OrderID` (INT, FK)
- `PaymentDate` (DATE)
- `Amount` (INT)
- `PaymentMethod` (TEXT)
- `Status` (TEXT)

### Customer
Shop customers.  
Approx. 50,000 entries.
- `CustomerID` (INT, PK)
- `Name` (TEXT)
- `ShippingAddress` (TEXT)
- `Phone` (VARCHAR)
- `Email` (TEXT)
- `BillingAddress` (TEXT)

---

## 🔗 Entity Relationships

- **Delivery ↔ Supplier**: Each delivery is made by one supplier. A supplier can make many deliveries.
- **DeliveredItem ↔ Product**: Delivered items relate to specific products. A product can appear in many deliveries.
- **Delivery ↔ DeliveredItem**: One delivery contains many delivered items.
- **OrderedItem ↔ Product**: Each order item corresponds to a specific product.
- **Order ↔ OrderItem**: One order can contain multiple types of items.
- **Order ↔ Courier**: Each order is assigned to one courier company.
- **Order ↔ Payment**: One-to-one relation between order and payment.
- **Customer ↔ Order**: Customers can place multiple orders. Each order belongs to one customer.
- **Customer ↔ Payment**: Customers can make multiple payments. Each payment is tied to one customer.

---

## 🧩 Relational Schema

- Delivery (PK: DeliveryID, FK: SupplierID)
- Supplier (PK: SupplierID)
- DeliveredItem (PK: DeliveredItemID, FK: DeliveryID, ProductID)
- Product (PK: ProductID)
- OrderItem (PK: OrderItemID, FK: ProductID, OrderID)
- Order (PK: OrderID, FK: CustomerID)
- Courier (PK: CompanyID)
- Payment (PK: PaymentID, FK: OrderID)
- Customer (PK: CustomerID)

