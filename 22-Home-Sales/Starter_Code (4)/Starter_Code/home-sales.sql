SELECT YEAR(date_sold) AS year, ROUND(AVG(price), 2) AS avg_price
FROM home_sales
WHERE bedrooms = 4
GROUP BY YEAR(date_sold)
ORDER BY year;

SELECT date_built AS year_built, ROUND(AVG(price), 2) AS avg_price
FROM home_sales
WHERE bedrooms = 3 AND bathrooms = 3 AND floors = 2 AND sqft_living >= 2000
GROUP BY date_built
ORDER BY year_built;

SELECT date_built AS year_built, ROUND(AVG(price), 2) AS avg_price
FROM home_sales
WHERE bedrooms = 3 AND bathrooms = 3 AND floors = 2 AND sqft_living >= 2000
GROUP BY date_built
ORDER BY year_built;

SELECT view, ROUND(AVG(price), 2) AS avg_price
FROM home_sales
GROUP BY view
HAVING AVG(price) >= 350000
ORDER BY avg_price DESC;