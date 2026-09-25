SELECT * FROM `SuryaHub.SuryaHub` LIMIT 1000;
SELECT COUNT(*) AS total_pembelian
FROM `SuryaHub.SuryaHub`
WHERE Gender = 'Female';

SELECT Location, COUNT(DISTINCT Customer_ID) AS total_customers
FROM `SuryaHub.SuryaHub`
GROUP BY  Location
ORDER BY total_customers DESC
LIMIT 5;

SELECT Discount_Used, COUNT(*) AS total
FROM `SuryaHub.SuryaHub`
WHERE Brand_Loyalty = 5
GROUP BY Discount_Used;

SELECT 
    Purchase_Intent, 
    ROUND(AVG(Purchase_Amount), 2) AS avg_amount,
    ROUND(AVG(Frequency_of_Purchase), 2) AS avg_frequency
FROM `SuryaHub.SuryaHub`
GROUP BY Purchase_Intent
ORDER BY avg_amount DESC;

SELECT 
    Purchase_Channel,
    ROUND(AVG(Purchase_Amount), 2) AS avg_amount,
    ROUND(AVG(Frequency_of_Purchase), 2) AS avg_frequency
FROM `SuryaHub.SuryaHub`
GROUP BY Purchase_Channel
ORDER BY avg_amount DESC;

SELECT 
    Customer_Loyalty_Program_Member,
    ROUND(AVG(Purchase_Amount), 2) AS avg_amount,
    ROUND(AVG(Frequency_of_Purchase), 2) AS avg_frequency
FROM `SuryaHub.SuryaHub`
GROUP BY Customer_Loyalty_Program_Member;

SELECT 
    Customer_ID, 
    SUM(Purchase_Amount) AS total_spent,
    MAX(Location) AS Location,
    MAX(Purchase_Channel) AS Channel,
    MAX(Brand_Loyalty) AS Brand_Loyalty
FROM `SuryaHub.SuryaHub`
GROUP BY Customer_ID
ORDER BY total_spent DESC
LIMIT 10;