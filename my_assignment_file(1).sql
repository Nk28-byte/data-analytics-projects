use practice; # Use Database

CREATE TABLE retail_data (
    Transaction_ID VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Region VARCHAR(20),
    Month VARCHAR(10),
    Sales FLOAT,
    Profit FLOAT,
    Inventory_Days INT
);

select * from retail_data;

#-----------------------------Checking the null values--------------------------

SELECT * FROM retail_data
WHERE Transaction_ID IS NULL OR
      Category IS NULL OR
      Sub_Category IS NULL OR
      Region IS NULL OR
      Sales IS NULL OR
      Profit IS NULL OR
      Inventory_Days IS NULL;

#-------------------------------Checking the duplicate values----------------------------

SELECT Transaction_ID, COUNT(*) 
FROM retail_data
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

#------------------------Checking the invalid values-------------------------------

SELECT * FROM retail_data
WHERE Sales < 0 OR Inventory_Days < 0;

#-----------------------Total sales,profit and profit margin by category------------

SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2) AS Profit_Margin_Percentage
FROM retail_data
GROUP BY Category
ORDER BY Profit_Margin_Percentage ASC;

#-------------------------------Detailed Analysis by Sub-Category----------------------

SELECT 
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2) AS Profit_Margin_Percentage
FROM retail_data
GROUP BY Category, Sub_Category
ORDER BY Profit_Margin_Percentage ASC;

#-----------------------------Region-Wise Profitability (Bonus Insight)----------------

SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2) AS Profit_Margin_Percentage
FROM retail_data
GROUP BY Region
ORDER BY Total_Profit DESC;

#---------------------Month-wise trend analysis------------------------------

SELECT 
    Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_data
GROUP BY Month
ORDER BY Total_Sales DESC;

#-------------------Inventory-heavy but low-profit items------------------------

SELECT *
FROM retail_data
WHERE Inventory_Days > 30 AND Profit < 100;
