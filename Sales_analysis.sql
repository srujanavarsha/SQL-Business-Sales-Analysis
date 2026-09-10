CREATE TABLE Sales_analysis(
	Order_ID VARCHAR(10) PRIMARY KEY ,
    Order_Date DATE,
    Region VARCHAR(20),
    Category VARCHAR(30),
    Sales INT,
    Quantity INT,
    Status VARCHAR(20));
INSERT INTO Sales_Analysis
(Order_ID, Order_Date, Region, Category, Sales, Quantity, Status)
VALUES
('O001', '2026-01-05', 'North', 'Laptop', 78000, 3, 'Delivered'),
('O002', '2026-01-08', 'South', 'Monitor', 42000, 4, 'Delivered'),
('O003', '2026-01-12', 'East', 'Keyboard', 15000, 8, 'Pending'),
('O004', '2026-01-18', 'West', 'Laptop', 92000, 4, 'Delivered'),
('O005', '2026-02-03', 'North', 'Mouse', 12000, 10, 'Delivered'),
('O006', '2026-02-09', 'South', 'Laptop', 88000, 4, 'Delivered'),
('O007', '2026-02-14', 'East', 'Monitor', 45000, 5, 'Delivered'),
('O008', '2026-02-22', 'West', 'Keyboard', 18000, 7, 'Cancelled'),
('O009', '2026-03-04', 'North', 'Monitor', 48000, 5, 'Delivered'),
('O010', '2026-03-10', 'South', 'Laptop', 95000, 5, 'Delivered'),
('O011', '2026-03-16', 'East', 'Mouse', 16000, 12, 'Delivered'),
('O012', '2026-03-25', 'West', 'Monitor', 40000, 4, 'Pending'),
('O013', '2026-04-02', 'North', 'Laptop', 85000, 4, 'Delivered'),
('O014', '2026-04-11', 'South', 'Keyboard', 22000, 9, 'Delivered'),
('O015', '2026-04-17', 'East', 'Laptop', 96000, 5, 'Delivered'),
('O016', '2026-04-26', 'West', 'Mouse', 14000, 11, 'Cancelled'),
('O017', '2026-05-05', 'North', 'Monitor', 52000, 6, 'Delivered'),
('O018', '2026-05-12', 'South', 'Laptop', 99000, 5, 'Delivered'),
('O019', '2026-05-19', 'East', 'Keyboard', 25000, 10, 'Pending'),
('O020', '2026-05-28', 'West', 'Laptop', 90000, 4, 'Delivered');
SELECT*
FROM Sales_analysis;
SELECT
SUM(Sales) AS Total_revenue
FROM Sales_analysis;
SELECT
COUNT(*) AS Sales_count
FROM Sales_analysis;
SELECT
    Region,
    SUM(Sales) AS Total_revenue
	FROM Sales_analysis
    GROUP BY Region
    Order by Total_revenue DESC
    Limit 1;
SELECT
    Category,
    SUM(Sales) AS Total_revenue
    FROM Sales_analysis
    GROUP BY Category
    Order by Total_revenue ASC
    LIMIT 1;
SELECT*
FROM Sales_analysis
Where Sales>=50000;
SELECT
    Order_ID,
    Region,
    Category,
    sales
FROM Sales_analysis
Where Region='South'
AND Sales>80000;
SELECT
    Order_ID,
    Category,
    sales
FROM Sales_analysis
ORDER BY Sales DESC
LIMIT 3;
SELECT
    Region,
	COUNT(*) AS Sales_count,
    SUM(Sales) AS Total_revenue
    FROM Sales_analysis
    GROUP BY Region;
SELECT
    Category,
    SUM(Sales) AS Total_revenue
    FROM Sales_analysis
    GROUP BY Category
    HAVING SUM(Sales)>50000;
SELECT
   Order_ID,
   Category,
   Sales,
   CASE
     WHEN Sales>=70000 THEN'High value'
     WHEN Sales>=30000 THEN'Medium value'
     ELSE'Low value'
     END AS Order_value
FROM Sales analysis;
SELECT 
    Category,
    AVG(Sales) AS Average_Sales
    FROM Sales_analysis
    GROUP BY Category
    HAVING AVG(sales)>'30000';
SELECT
    Region,
    COUNT(*) AS Sales_orders,
    SUM(Sales) AS Total_revenue
    FROM Sales_analysis
    GROUP BY Region
    HAVING COUNT(*)>4
    AND SUM(Sales)>=250000;
SELECT
  Region,
  AVG(Sales) AS AVERAGE_Sales
  FROM Sales_analysis
  GROUP BY Region
  ORDER BY AVERAGE_Sales DESC
  LIMIT 1;
SELECT
    Order_Value,
    COUNT(*) AS Order_Count
FROM (
    SELECT
        CASE
            WHEN Sales >= 70000 THEN 'High Value'
            ELSE 'Low Value'
        END AS Order_Value
    FROM Sales_Analysis
) AS Classified_Orders
GROUP BY Order_Value;
SELECT 
    Category,
    SUM(Sales) AS Total_revenue 
    FROM Sales_analysis
      GROUP BY Category
      ORDER BY Total_revenue DESC;
SELECT 
    Status,
    COUNT(*) AS Sales_count,
    SUM(Sales) AS Total_revenue
    FROM Sales_analysis
    GROUP BY Status
    ORDER BY Total_revenue DESC;
   
    


 
