CREATE DATABASE shopping_analysis;
USE shopping_analysis;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
age INT NOT NULL,
gender VARCHAR(10) NOT NULL,
location VARCHAR(50) NOT NULL,
subscription_status VARCHAR(10) NOT NULL,
previous_purchases INT NOT NULL,
frequency_of_purchases VARCHAR(30) NOT NULL
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
item_purchased VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT NOT NULL,
product_id INT NOT NULL,
size VARCHAR(5) NOT NULL,
color VARCHAR(20) NOT NULL,
season VARCHAR(20) NOT NULL,
purchase_amount_usd INT NOT NULL,
review_rating INT NOT NULL,
shipping_type VARCHAR(20) NOT NULL,
discount_applied VARCHAR(5) NOT NULL,
promo_code_used VARCHAR(20),
payment_method VARCHAR(20) NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);