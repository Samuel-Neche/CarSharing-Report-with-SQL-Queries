-- Question 1
SELECT carsharing_df.demand, substr(timestamp, 12, 18) AS "Time (hr)", substr(timestamp, 1, 10) AS Date
FROM carsharing_db.time JOIN carsharing_db.carsharing_df ON time.id = carsharing_df.id
ORDER BY carsharing_df.demand DESC;

-- Question 2
-- MAX Average demand
SELECT
  AVG(carsharing_df.demand) AS Average,
  time.`month name` AS month,
  time.season,
  time.`weekday name` AS weekday
FROM carsharing_db.time
JOIN carsharing_db.carsharing_df ON time.id = carsharing_df.id
GROUP BY month, season, weekday
ORDER BY Average ASC
LIMIT 1;

-- MIN Average demand
SELECT
  AVG(carsharing_df.demand) AS Average,
  time.`month name`,
  time.season,
  time.`weekday name`
FROM carsharing_db.time
JOIN carsharing_db.carsharing_df ON time.id = carsharing_df.id
GROUP BY time.`month name`, time.season, time.`weekday name`
ORDER BY Average DESC
LIMIT 10;

-- Question 3
-- MAX Avg
SELECT
  AVG(carsharing_df.demand) AS Average,
  time.`month name`,
  time.season,
  time.hour,
  time.`weekday name`
FROM carsharing_db.time
JOIN carsharing_db.carsharing_df ON time.id = carsharing_df.id
GROUP BY time.`month name`, time.season, time.`weekday name`, time.hour
ORDER BY Average DESC
LIMIT 10;

-- MIN Avg
SELECT
  AVG(carsharing_df.demand) AS Average,
  time.`month name`,
  time.season,
  time.hour,
  time.`weekday name`
FROM carsharing_db.time
JOIN carsharing_db.carsharing_df ON time.id = carsharing_df.id
GROUP BY time.`month name`, time.season, time.`weekday name`, time.hour
ORDER BY Average ASC
LIMIT 10;

-- Question 4
-- (i) 
SELECT COUNT(weather) AS Prevalence, weather
FROM carsharing_db.carsharing_df
JOIN carsharing_db.weather 
ON carsharing_df.weather_code = weather.weather_code
GROUP BY weather
ORDER BY Prevalence DESC;

-- (ii) 
SELECT AVG(windspeed), MAX(windspeed), MIN(windspeed), `month name`
FROM carsharing_db.carsharing_df JOIN carsharing_db.time
ON carsharing_df.id = time.id
GROUP BY `month name`;

SELECT MAX(humidity), AVG(humidity), MIN(humidity), `month name`
FROM carsharing_db.carsharing_df JOIN carsharing_db.time
ON carsharing_df.id = time.id
GROUP BY `month name`;

SELECT AVG(carsharing_df.demand) AS Avg_Demand, weather.weather
FROM carsharing_db.carsharing_df 
JOIN carsharing_db.weather ON carsharing_df.weather_code = weather.weather_code
GROUP BY weather
ORDER BY Avg_Demand DESC;

-- Question 5
SELECT AVG(carsharing_df.demand) AS Avg_Demand, time.`month name`
FROM carsharing_db.carsharing_df JOIN carsharing_db.time ON carsharing_df.id = time.id
WHERE `month name`= "September"
GROUP BY `month name`
ORDER BY Avg_Demand DESC;

SELECT MAX(carsharing_df.humidity), AVG(carsharing_df.humidity) AS Avg_Demand, MIN(carsharing_df.humidity), time.`month name`
FROM carsharing_db.carsharing_df JOIN carsharing_db.weather ON carsharing_df.weather_code = weather.weather_code 
JOIN carsharing_db.time ON carsharing_df.id = time.id
WHERE `month name`= "July"
GROUP BY `month name`
ORDER BY Avg_Demand DESC;


SELECT AVG(carsharing_df.windspeed) AS Avg_Demand, MAX(carsharing_df.windspeed), MIN(carsharing_df.windspeed), time.`month name`
FROM carsharing_db.carsharing_df JOIN carsharing_db.weather ON carsharing_df.weather_code = weather.weather_code 
JOIN carsharing_db.time ON carsharing_df.id = time.id
WHERE `month name`= "July"
GROUP BY `month name`
ORDER BY Avg_Demand DESC;