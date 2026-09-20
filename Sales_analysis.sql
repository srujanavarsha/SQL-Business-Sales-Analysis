-- SQL BUSINESS SALES ANALYSIS
-- DAY 28 — SQL PROJECT CHECKPOINT
-- 25 BUSINESS ANALYSIS QUERIES
-- MySQL

-- Table: Sales_Analysis
-- Columns: Order_ID, Order_Date, Region, Category, Sales, Quantity, Status

-- 01 Total Revenue
SELECT SUM(Sales) AS Total_Revenue FROM Sales_Analysis;

-- 02 Total Orders
SELECT COUNT(*) AS Order_Count FROM Sales_Analysis;

-- 03 Average Sales
SELECT AVG(Sales) AS Average_Sales FROM Sales_Analysis;

-- 04 Maximum Sales
SELECT MAX(Sales) AS Maximum_Sales FROM Sales_Analysis;

-- 05 Minimum Sales
SELECT MIN(Sales) AS Minimum_Sales FROM Sales_Analysis;

-- 06 Revenue by Region
SELECT Region, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis GROUP BY Region;

-- 07 Order Count by Region
SELECT Region, COUNT(*) AS Order_Count
FROM Sales_Analysis GROUP BY Region;

-- 08 Highest Revenue Region
SELECT Region, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Region
ORDER BY Total_Revenue DESC
LIMIT 1;

-- 09 Average Sales by Region
SELECT Region, AVG(Sales) AS Average_Sales
FROM Sales_Analysis GROUP BY Region;

-- 10 Regions with Revenue Above 250000
SELECT Region, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Region
HAVING Total_Revenue > 250000;

-- 11 Revenue by Category
SELECT Category, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis GROUP BY Category;

-- 12 Order Count by Category
SELECT Category, COUNT(*) AS Order_Count
FROM Sales_Analysis GROUP BY Category;

-- 13 Highest Revenue Category
SELECT Category, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Category
ORDER BY Total_Revenue DESC
LIMIT 1;

-- 14 Lowest Revenue Category
SELECT Category, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Category
ORDER BY Total_Revenue ASC
LIMIT 1;

-- 15 Categories Above 50000 Revenue
SELECT Category, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Category
HAVING Total_Revenue > 50000;

-- 16 Delivered Orders
SELECT Status, COUNT(*) AS Order_Count, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
WHERE Status = 'Delivered';

-- 17 Pending Orders
SELECT Status, COUNT(*) AS Order_Count, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
WHERE Status = 'Pending';

-- 18 Cancelled Orders
SELECT Status, COUNT(*) AS Order_Count, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
WHERE Status = 'Cancelled';

-- 19 Sales Value Classification
SELECT Order_ID, Sales,
       CASE
           WHEN Sales >= 70000 THEN 'HIGH VALUE'
           WHEN Sales >= 30000 THEN 'MEDIUM VALUE'
           ELSE 'LOW VALUE'
       END AS Order_Value
FROM Sales_Analysis;

-- 20 Orders Above Average Sales
SELECT Order_ID, Category, Sales
FROM Sales_Analysis
WHERE Sales > (
    SELECT AVG(Sales) FROM Sales_Analysis
);

-- 21 Order with Highest Sales
SELECT Order_ID, Category, Sales
FROM Sales_Analysis
WHERE Sales = (
    SELECT MAX(Sales) FROM Sales_Analysis
);

-- 22 Rank Orders by Sales
SELECT Order_ID, Category, Sales,
       RANK() OVER (ORDER BY Sales DESC) AS Sales_Rank
FROM Sales_Analysis;

-- 23 Running Total from Lowest to Highest Sales
SELECT Order_ID, Sales,
       SUM(Sales) OVER (ORDER BY Sales ASC) AS Running_Total
FROM Sales_Analysis;

-- 24 Top 5 Orders with Rank
SELECT Order_ID, Category, Sales,
       RANK() OVER (ORDER BY Sales DESC) AS Sales_Rank
FROM Sales_Analysis
LIMIT 5;

-- 25 Statuses with More Than 2 Orders
SELECT Status, COUNT(*) AS Order_Count, SUM(Sales) AS Total_Revenue
FROM Sales_Analysis
GROUP BY Status
HAVING COUNT(*) > 2;
