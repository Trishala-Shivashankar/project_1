SELECT 
    Product_Category,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Product_Category
ORDER BY 
    Return_Percentage DESC;

SELECT 
    Region,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Region
ORDER BY 
    Return_Percentage DESC;
    
SELECT 
    Marketing_Channel,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Marketing_Channel
ORDER BY 
    Return_Percentage DESC;
    
SELECT 
    Product_ID,
    Product_Category,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Product_ID, Product_Category
ORDER BY 
    Return_Percentage DESC
LIMIT 10;

SELECT 
    Shipping_Method,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Shipping_Method
ORDER BY 
    Return_Percentage DESC;
    
SELECT 
    Order_Weekday,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(100 * SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Return_Percentage
FROM 
    ecommerce_return_enhanced
GROUP BY 
    Order_Weekday
ORDER BY 
    FIELD(Order_Weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');






