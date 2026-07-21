SELECT
    `Event`,
    COUNT(*) AS Total_Events
FROM client_site_dataset
GROUP BY `Event`;

SELECT
    `Event`,
    COUNT(DISTINCT `User ID`) AS Users
FROM client_site_dataset
GROUP BY `Event`;