CREATE DATABASE funnel_analysis;
USE funnel_analysis;
select count(*) from client_site_dataset;

SELECT *
FROM client_site_dataset
LIMIT 10;

SELECT COUNT(*) AS Total_Rows
FROM client_site_dataset;

SELECT COUNT(DISTINCT `User ID`) AS Total_Users
FROM client_site_dataset;

SELECT COUNT(DISTINCT 'Session ID') AS Total_Sessions
FROM client_site_dataset;

SELECT DISTINCT 'Event'
FROM client_site_dataset;