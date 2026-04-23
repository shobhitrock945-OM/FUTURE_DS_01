use future_intern;
select * from task_2;

-- Query 1 (Overview)
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Total_Churned,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100, 2) AS Churn_Rate_Percentage
FROM task_2;

-- Query 2 (Contract_Analysis)

SELECT 
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Count,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100, 2) AS Churn_Rate
FROM task_2
GROUP BY Contract
ORDER BY Churn_Rate DESC;

-- Query 3 (Tenure_Trends)

SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-1 Year (New)'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years (Loyal)'
    END AS Tenure_Cohort,
    COUNT(*) AS Total_Customers,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100, 2) AS Churn_Rate
FROM task_2
GROUP BY Tenure_Cohort
ORDER BY Churn_Rate DESC;

-- Query 4 (Service_Impact)

SELECT 
    TechSupport,
    OnlineSecurity,
    COUNT(*) AS Total_Customers,
    ROUND(AVG(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100, 2) AS Churn_Rate
FROM task_2
GROUP BY TechSupport, OnlineSecurity
ORDER BY Churn_Rate ASC;

