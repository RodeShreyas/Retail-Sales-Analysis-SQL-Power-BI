# Retail-Sales-Analysis-SQL-Power-BI

# 📊 Retail Sales Analysis (SQL + Power BI)

## 📌 Project Overview
This project focuses on analyzing retail sales data using SQL and visualizing key business insights using Power BI. Data Cleaning and preprocessing were performed using Excel. It helps understand customer behavior, product performance, and sales trends.

## 🎯 Objectives
- Analyze total revenue and order patterns
- Identify top-performing products and categories
- Clean and prepare raw data for analysis
- Understand customer purchasing behavior
- Visualize insights using an interactive dashboard

## 🛠 Tools & Technologies Used
- Excel → Data Cleaning & Preprocessing
- SQL (MySQL) → Data querying and analysis  
- Power BI → Dashboard creation and visualization

## Data Cleaning (Excel)
Before analysis, the dataset was cleaned using Excel:
- Removed duplicate records
- Handled missing values
- Standardized column formats

## Dataset Description
The dataset consists of three tables:

### 1. Customers
- customer_id
- age
- gender
- location
- subscription_status
- previous_purchases
- frequency_of_purchases

### 2. Products
- product_id
- item_purchased
- category

### 3. Orders
- order_id
- customer_id
- product_id
- size
- color
- season
- purchase_amount_usd
- review_rating
- shipping_type
- discount_applied
- promo_code_used
- payment_method

## SQL Analysis

### 🔹 Basic Queries
- Total Revenue
- Total Orders
- Avg Purchase Value

### 🔹 Intermediate Queries
- Top Products By Orders
- Sales by Category
- Orders by Size
- Sales By Season
- Orders By Location
- Orders by Payment Method
- Discount Analysis
- Average Purchase By Subscription
- Average Rating by Product

### 🔹 Advanced Queries
- Products with >50 Orders
- Ranking Top Products by Revenue (RANK function)
- Above Average Purchase Analysis (Subquery)

## 📊 Key Insights
- 🔹 Clothing category generates the highest revenue  
- 🔹 Medium (M) size products have the highest number of orders  
- 🔹 PayPal and Credit Card are the most commonly used payment methods  
- 🔹 Revenue distribution is relatively balanced across seasons  
- 🔹 Top products like Blouse, Shirt, and Dress contribute most to revenue

## 📸 Dashboard Preview
<img width="1158" height="683" alt="Retail_Sales_Dashboard" src="https://github.com/user-attachments/assets/d581bfa1-ecf5-443e-8f0d-f3d9d991fb2c" />

## 📊 Power BI Dashboard Features
- KPI Cards (Total Revenue, Orders, Avg Order Value, Customers)
- Revenue Analysis by Category
- Orders Analysis by Payment Method and Size
- Seasonal Sales Distribution
- Top Products by Revenue
- Interactive Filters (Season, Category, Payment Method)

## Business Impact
This dashboard helps businesses:
- Identify high-performing products
- Understand customer buying patterns
- Optimize inventory and marketing strategies
- Improve decision-making using data insights

## Author
Shreyas Rode
