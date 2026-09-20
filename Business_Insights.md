# SQL Business Sales Analysis — Day 28 Findings

## Project Overview
This project uses MySQL to answer practical business questions about sales revenue, orders, regions, categories, order status, high-value orders, subqueries, ranking, and running totals.

## Dataset
**Table:** `Sales_Analysis`

**Columns:** `Order_ID`, `Order_Date`, `Region`, `Category`, `Sales`, `Quantity`, `Status`

## Key Findings

### Overall
- Total Revenue: **₹1,072,000**
- Total Orders: **20**
- Average Sales per Order: **₹53,600**
- Maximum Order Value: **₹99,000**
- Minimum Order Value: **₹12,000**

### Regional Performance

| Region | Revenue | Orders | Average Sales |
|---|---:|---:|---:|
| South | ₹346,000 | 5 | ₹69,200 |
| North | ₹275,000 | 5 | ₹55,000 |
| West | ₹254,000 | 5 | ₹50,800 |
| East | ₹197,000 | 5 | ₹39,400 |

South generated the highest regional revenue and highest average sales per order.

### Category Performance

| Category | Revenue | Orders |
|---|---:|---:|
| Laptop | ₹723,000 | 8 |
| Monitor | ₹227,000 | 5 |
| Keyboard | ₹80,000 | 4 |
| Mouse | ₹42,000 | 3 |

Laptop generated the highest category revenue. Mouse generated the lowest.

### Order Status

| Status | Orders | Revenue |
|---|---:|---:|
| Delivered | 15 | ₹960,000 |
| Pending | 3 | ₹80,000 |
| Cancelled | 2 | ₹32,000 |

### Top 5 Orders

| Rank | Order | Sales |
|---:|---|---:|
| 1 | O018 | ₹99,000 |
| 2 | O015 | ₹96,000 |
| 3 | O010 | ₹95,000 |
| 4 | O004 | ₹92,000 |
| 5 | O020 | ₹90,000 |

## Business Recommendations
1. Review the drivers of South's higher sales performance.
2. Monitor Laptop performance because it is the largest revenue category.
3. Investigate the 3 pending orders representing ₹80,000.
4. Review reasons for the 2 cancelled orders.
5. Investigate the lower revenue of Mouse.

## SQL Skills Demonstrated
- SELECT, WHERE, ORDER BY, LIMIT
- COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- CASE WHEN
- JOINs
- Date functions
- Subqueries
- ROW_NUMBER()
- RANK()
- SUM() OVER()
- Business KPI analysis
- Business findings and recommendations

## Day 28 Outcome
Completed a 25-query SQL business analysis checkpoint. Queries were executed and verified in MySQL, with AI used for explanation and logic review.
