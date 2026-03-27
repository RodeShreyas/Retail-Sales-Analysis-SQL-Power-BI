-- Q4: Which are the top 5 most purchased products?
-- Top Products By Orders
SELECT products.item_purchased, 
COUNT(*) AS total_orders FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY products.item_purchased
ORDER BY total_orders DESC
LIMIT 5;

-- Q5: Which product categories generate the most revenue?
-- Sales By Category
SELECT products.category, 
SUM(orders.purchase_amount_usd) AS total_sales FROM orders 
JOIN products ON orders.product_id = products.product_id
GROUP BY products.category
ORDER BY total_sales DESC;

-- Q6: Which product size is purchased the most?
-- Orders By Size
SELECT size, COUNT(*) AS total_orders 
FROM orders
GROUP BY size
ORDER BY total_orders DESC;

-- Q7: Which season generates the highest sales?
-- Sales By Season
SELECT season, SUM(purchase_amount_usd) AS total_sales 
FROM orders
GROUP BY season
ORDER BY total_sales DESC;

-- Q8: Which locations have the highest number of orders?
-- Orders By Location
SELECT customers.location, COUNT(*) AS total_orders
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.location
ORDER BY total_orders DESC
LIMIT 10;

-- Q9: Which payment method is used the most?
-- Orders By Payment Method
SELECT payment_method, COUNT(*) AS total_orders
FROM orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- Q10: How many orders used discounts?
-- Discount Analysis
SELECT discount_applied, COUNT(*) AS total_orders
FROM orders
GROUP BY discount_applied;

-- Q11: Do subscribed customers spend more?
-- Avg Purchase By Subscription
SELECT customers.subscription_status, ROUND(AVG(orders.purchase_amount_usd),2) AS avg_purchase
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.subscription_status;

-- Q12: Which products have the highest average ratings?
-- Avg Rating By Product
SELECT products.item_purchased, AVG(orders.review_rating) AS avg_rating
FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY products.item_purchased
ORDER BY avg_rating DESC;