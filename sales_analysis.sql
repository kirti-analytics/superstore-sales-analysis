CREATE DATABASE sales_project;
USE sales_project;
SELECT * FROM samplesuperstore;
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore;
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore;
SELECT COUNT(*) AS Total_Orders
FROM samplesuperstore;
SELECT Region,
       ROUND(SUM(Sales),2) AS Revenue
FROM samplesuperstore
GROUP BY Region
ORDER BY Revenue DESC;
SELECT Region,
       ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY Region
ORDER BY Profit DESC;

SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT State,
       ROUND(SUM(Sales),2) AS Revenue
FROM samplesuperstore
GROUP BY State
ORDER BY Revenue DESC
LIMIT 10;

SELECT `Sub-Category`,
       ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Profit DESC;

SELECT `Sub-Category`,
       ROUND(SUM(Profit),2) AS Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Profit ASC;

SELECT Segment,
       ROUND(SUM(Sales),2) AS Revenue
FROM samplesuperstore
GROUP BY Segment
ORDER BY Revenue DESC;

SELECT ROUND(AVG(Discount)*100,2) AS Avg_Discount_Percentage
FROM samplesuperstore;

SELECT Discount,
       ROUND(AVG(Profit),2) AS Avg_Profit
FROM samplesuperstore
GROUP BY Discount
ORDER BY Discount;

SELECT `Sub-Category`,
       SUM(Quantity) AS Total_Quantity
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Total_Quantity DESC
LIMIT 10;