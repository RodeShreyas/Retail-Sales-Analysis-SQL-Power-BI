-- What is the total revenue generated?
SELECT SUM(purchase_amount_usd) AS total_revenue
FROM orders;

-- How many total orders were placed?
SELECT COUNT(*) AS total_orders
FROM orders;

-- What is the average purchase value?
SELECT AVG(purchase_amount_usd) AS avg_purchase_value
FROM orders;