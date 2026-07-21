SELECT
`Event`,
COUNT(DISTINCT `User ID`) AS Users
FROM client_site_dataset
GROUP BY `Event`;

SELECT
COUNT(DISTINCT CASE WHEN `Event`='Browse' THEN `User ID` END) AS Browse,
COUNT(DISTINCT CASE WHEN `Event`='Add to Cart' THEN `User ID` END) AS Add_To_Cart,
COUNT(DISTINCT CASE WHEN `Event`='Checkout' THEN `User ID` END) AS Checkout
FROM client_site_dataset;

SELECT
`Event`,
COUNT(DISTINCT `User ID`) AS Users
FROM client_site_dataset
GROUP BY `Event`
ORDER BY Users ASC;