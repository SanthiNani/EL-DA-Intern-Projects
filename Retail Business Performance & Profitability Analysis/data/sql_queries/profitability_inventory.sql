-- Retail Business Performance & Profitability Analysis

-- 1. Total Profit by Product Category
SELECT
    [Product_Category],
    SUM([Quantity] * ([Price_per_Unit] - [Cost_per_Unit])) AS total_profit
FROM dbo.cleaned_enhanced_data
GROUP BY [Product_Category]
ORDER BY total_profit DESC;

-- 2. Profit Margin (%) by Product Category
SELECT
    [Product_Category],
    ROUND(
        100.0 * SUM([Quantity] * ([Price_per_Unit] - [Cost_per_Unit])) / 
        NULLIF(SUM([Quantity] * [Price_per_Unit]), 0), 2
    ) AS profit_margin_percentage
FROM dbo.cleaned_enhanced_data
GROUP BY [Product_Category]
ORDER BY profit_margin_percentage DESC;

-- 3. Monthly Revenue Trend
SELECT
    [Month_Year] AS [Month],
    SUM([Quantity] * [Price_per_Unit]) AS monthly_revenue
FROM dbo.cleaned_enhanced_data
GROUP BY [Month_Year]
ORDER BY [Month_Year];

-- 4. Inventory Turnover by Product Category
SELECT
    [Product_Category],
    ROUND(AVG([Quantity] * 1.0 / NULLIF([Inventory_Days], 0)), 2) AS avg_inventory_turnover
FROM dbo.cleaned_enhanced_data
GROUP BY [Product_Category]
ORDER BY avg_inventory_turnover DESC;

-- 5. Slow-moving Product Categories (lowest inventory turnover)
SELECT TOP 10
    [Product_Category],
    ROUND(AVG([Quantity] * 1.0 / NULLIF([Inventory_Days], 0)), 2) AS inventory_turnover
FROM dbo.cleaned_enhanced_data
GROUP BY [Product_Category]
ORDER BY inventory_turnover ASC;

-- 6. Overstocked Product Categories (highest inventory days)
SELECT TOP 10
    [Product_Category],
    AVG([Inventory_Days]) AS avg_inventory_days,
    SUM([Quantity]) AS total_sold
FROM dbo.cleaned_enhanced_data
GROUP BY [Product_Category]
ORDER BY avg_inventory_days DESC;
