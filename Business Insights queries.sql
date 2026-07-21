SELECT
`User ID`,
SUM(`Revenue`) AS Total_Revenue
FROM client_site_dataset
GROUP BY `User ID`
ORDER BY Total_Revenue DESC
LIMIT 5;

SELECT
`Channel`,
SUM(`Revenue`) AS Total_Revenue
FROM client_site_dataset
GROUP BY `Channel`
ORDER BY Total_Revenue DESC
LIMIT 1;

SELECT
`Region`,
SUM(`Revenue`) AS Total_Revenue
FROM client_site_dataset
GROUP BY `Region`
ORDER BY Total_Revenue DESC
LIMIT 1;

SELECT
`Device`,
COUNT(DISTINCT CASE WHEN `Event`='Browse' THEN `User ID` END) AS Browse_Users,
COUNT(DISTINCT CASE WHEN `Event`='Checkout' THEN `User ID` END) AS Checkout_Users,
ROUND(
COUNT(DISTINCT CASE WHEN `Event`='Checkout' THEN `User ID` END) * 100.0 /
COUNT(DISTINCT CASE WHEN `Event`='Browse' THEN `User ID` END),2
) AS Conversion_Rate
FROM client_site_dataset
GROUP BY `Device`
ORDER BY Conversion_Rate DESC;


