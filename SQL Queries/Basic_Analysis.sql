-- Q1: What is the total revenue generated?
-- Total Revenue
SELECT SUM(purchase_amount_usd) AS total_revenue
FROM orders;

-- Q2: How many total orders were placed?
-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Q3: What is the average purchase value?
-- Avg Purchase Value
SELECT AVG(purchase_amount_usd) AS avg_purchase_value
FROM orders;
