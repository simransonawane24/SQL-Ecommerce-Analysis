-- Total Sales, Profit, Quantity

SELECT
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
SUM(Quantity) AS Total_Quantity
FROM superstore;

-- Regional Analysis

SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Category Analysis

SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit,
SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sub Category Analysis

SELECT
`Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Profit Margin Analysis

SELECT
Region,
ROUND(SUM(Profit),2) AS Total_Profit,
ROUND((SUM(Profit)/SUM(Sales))*100,2)
AS Profit_Margin_Percentage
FROM superstore
GROUP BY Region
ORDER BY Profit_Margin_Percentage DESC;

-- Discount Analysis

SELECT
Category,
ROUND(AVG(Discount),2) AS Avg_Discount,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Avg_Discount DESC;
