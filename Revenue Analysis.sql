SELECT SUM(`Revenue`) AS Total_Revenue
FROM client_site_dataset;


SELECT
    `Region`,
    SUM(`Revenue`) AS Revenue
FROM client_site_dataset
GROUP BY `Region`;

SELECT
    `Channel`,
    SUM(`Revenue`) AS Revenue
FROM client_site_dataset
GROUP BY `Channel`;

SELECT
    `Device`,
    SUM(`Revenue`) AS Revenue
FROM client_site_dataset
GROUP BY `Device`;





