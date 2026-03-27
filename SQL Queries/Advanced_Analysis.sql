-- Q13: Which products have more than 50 orders?
-- Products with >50 Orders
SELECT products.item_purchased, COUNT(*) AS total_orders
FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY products.item_purchased
HAVING total_orders > 50;

-- Q14: Rank products by total revenue
-- Top Products By Revenue
SELECT products.item_purchased, SUM(orders.purchase_amount_usd) AS total_sales,
RANK() OVER (ORDER BY SUM(orders.purchase_amount_usd) DESC) AS sales_rank
FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY products.item_purchased;

-- Q15: Find orders above average purchase value
-- Orders Above Average
SELECT * FROM orders
WHERE purchase_amount_usd >
(
SELECT AVG(purchase_amount_usd)
FROM orders
);