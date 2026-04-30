SELECT
Gender,
COUNT (Gender),
CONCAT (COUNT (Gender)  * 100/ (SELECT COUNT (*) FROM  dbo.Customer_Churn_Data) , '%') AS DDD
FROM dbo.Customer_Churn_Data
GROUP BY Gender

SELECT 
Contract,
COUNT(Contract) AS total_contarct,
CONCAT(COUNT(Contract) *100 / (SELECT COUNT(*) FROM dbo.Customer_Churn_Data) , '%') AS total_contract
FROM dbo.Customer_Churn_Data
GROUP BY Contract


SELECT 
Customer_Status,
COUNT(Customer_Status) AS total_contarct,
CONCAT(COUNT(Customer_Status) *100 / (SELECT COUNT(*) FROM dbo.Customer_Churn_Data) , '%') AS customer_stay,
SUM(Total_Revenue) AS total_revenu,
CONCAT(SUM(Total_Revenue) *100 / (SELECT SUM(Total_Revenue) FROM dbo.Customer_Churn_Data) , '%') AS part_of_totoal_revune
FROM dbo.Customer_Churn_Data
GROUP BY Customer_Status


SELECT 
State,
COUNT(Customer_ID) AS numbre_of_customer_of_state,
COUNT(Customer_ID) * 100.0 / (SELECT COUNT(Customer_ID) FROM dbo.Customer_Churn_Data ) AS perc_of_state
FROM dbo.Customer_Churn_Data
GROUP BY State


SELECT 
Internet_Type,
COUNT(Internet_Type) AS LL
FROM dbo.Customer_Churn_Data
WHERE Internet_Type IS NOT NULL
GROUP BY Internet_Type


SELECT 
Customer_Status,
COUNT(Customer_Status) AS LL
FROM dbo.Customer_Churn_Data
GROUP BY Customer_Status