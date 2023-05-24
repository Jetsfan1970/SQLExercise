-- Comments in SQL Start with dash-dash --
-- select app with ID 1880 --
SELECT * FROM analytics WHERE ID = 1880
-- select all apps updated 8/1/2018 --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
-- select and count apps of each category --
SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- select top 5 reviewed apps and number of reviews --
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
-- select the app with most reviews greater than or equal to 4.8 --
SELECT app_name FROM analytics ORDER BY rating WHERE rating >= 4.8 DESC LIMIT 1;
-- find average rating of each category, order by higest to lowest rating --
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;
-- find the name, price, and rating of the most expensive app with a rating that’s less than 3 --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER by price DESC LIMIT 1;
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first --
SELECT * FROM analytics WHERE min_install <= 50 AND rating IS NOT NULL ORDER BY rating DESC;
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews --
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar --
ELECT * FROM analytics WHERE price BETWEEN 0.1 and 1 ORDER BY reviews DESC LIMIT 10;
-- Most out of date app --
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;
-- Find the most expensive app  --
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
-- Count all the reviews in the Google Play Store --
SELECT SUM(reviews) AS "All the Reviews" FROM analytics;
-- Find all the categories that have more than 300 apps in them --
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- Find the app that has the highest proportion of reviews to min_installs, among apps that have been installed at least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion.
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;