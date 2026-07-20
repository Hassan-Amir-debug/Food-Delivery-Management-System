USE FoodDeliveryDB;

-- Customers
INSERT INTO Customer VALUES
(1, 'Ali Khan', 'ali@example.com', '03123456789', 'Gulshan Block 3'),
(2, 'Sara Ahmed', 'sara@example.com', '03001234567', 'DHA Phase 5');

-- Restaurants
INSERT INTO Restaurant VALUES
(1, 'Burger Palace', 'Fast Food', 'Downtown'),
(2, 'Sushi Zen', 'Japanese', 'East City');

-- Menu Items
INSERT INTO MenuItem VALUES
(1, 'Cheeseburger', 500.00, 1),
(2, 'Fries', 200.00, 1),
(3, 'Sushi Roll', 850.00, 2);

-- Orders
INSERT INTO Orders VALUES
(101, 1, 1, '2025-06-01', 'Completed'),
(102, 2, 2, '2025-06-02', 'Pending');

-- Order Items
INSERT INTO OrderItem VALUES
(101, 1, 2),
(101, 2, 1),
(102, 3, 3);

-- Delivery Persons
INSERT INTO DeliveryPerson VALUES
(1, 'Ahmed Ali', '03111222333'),
(2, 'Fatima Noor', '03009998888');

-- Deliveries
INSERT INTO Delivery VALUES
(1, 101, 1, '2025-06-01 13:00:00', 'Delivered'),
(2, 102, 2, '2025-06-02 15:30:00', 'In Progress');

-- Payments
INSERT INTO Payment VALUES
(1, 101, 1200.00, 'Credit Card', 'Paid', '2025-06-01'),
(2, 102, 2550.00, 'Cash', 'Pending', '2025-06-02');
