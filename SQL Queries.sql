/* Combining all 12-month datasets into one dataset */
CREATE TABLE IF NOT EXISTS `Cyclistic.tripdata` AS (
  SELECT * FROM `Cyclistic.202206-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202207-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202208-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202209-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202210-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202211-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202212-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202301-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202302-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202303-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202304-tripdata`
  UNION ALL
  SELECT * FROM `Cyclistic.202305-tripdata`
);

SELECT COUNT(*) AS total_rows
FROM `Cyclistic.tripdata`; -- 5829030 records

/* Checking number of null values in each column */
SELECT
  COUNT(*) as total_rows,
  COUNT(CASE WHEN ride_id            IS NULL THEN 1 END) AS ride_id_null_count,
  COUNT(CASE WHEN rideable_type      IS NULL THEN 1 END) AS rideable_type_null_count,
  COUNT(CASE WHEN started_at         IS NULL THEN 1 END) AS started_at_null_count,
  COUNT(CASE WHEN ended_at           IS NULL THEN 1 END) AS ended_at_null_count,
  COUNT(CASE WHEN start_station_name IS NULL THEN 1 END) AS start_station_name_null_count,
  COUNT(CASE WHEN start_station_id   IS NULL THEN 1 END) AS start_station_id_null_count,
  COUNT(CASE WHEN end_station_name   IS NULL THEN 1 END) AS end_station_name_null_count,
  COUNT(CASE WHEN end_station_id     IS NULL THEN 1 END) AS end_station_id_null_count,
  COUNT(CASE WHEN start_lat          IS NULL THEN 1 END) AS start_lat_null_count,
  COUNT(CASE WHEN start_lng          IS NULL THEN 1 END) AS start_lng_null_count,
  COUNT(CASE WHEN end_lat            IS NULL THEN 1 END) AS end_lat_null_count,
  COUNT(CASE WHEN end_lng            IS NULL THEN 1 END) AS end_lng_null_count,
  COUNT(CASE WHEN member_casual      IS NULL THEN 1 END) AS member_casual_null_count
FROM `Cyclistic.tripdata`;
/* Results:
start_station_name_null_count = 834545
start_station_id_null_count	  = 834677
end_station_name_null_count	  = 891757
end_station_id_null_count	    = 891898
start_lat_null_count          = 0
start_lng_null_count          = 0
end_lat_null_count            = 5961
end_lng_null_count            = 5961 */

/* Not able to identifying start_station_name and end_station_name based on start_station_id and end_station_id. SQL Queries as the following */
SELECT 
  start_station_name, 
  start_station_id
FROM `Cyclistic.tripdata`
WHERE 
  start_station_name IS NULL
  AND 
  start_station_id IS NOT NULL; -- none record

SELECT 
  end_station_name, 
  end_station_id
FROM `Cyclistic.tripdata`
WHERE 
  end_station_name IS NULL
  AND 
  end_station_id IS NOT NULL; -- none record

/* 885796 records might be identified based on end_lat and end_lng. However, there were 5961 end_station_name not identified based on end_lat and end_lng because both end_lat and end_lng were null. SQL Queries as the following */
SELECT 
  end_station_name, 
  end_lat, end_lng
FROM `Cyclistic.tripdata`
WHERE 
  end_station_name IS NULL
  AND
  end_lat IS NOT NULL
  AND
  end_lng IS NOT NULL; -- 885796 records

SELECT 
  end_station_name, 
  end_lat, 
  end_lng
FROM `Cyclistic.tripdata`
WHERE 
  end_station_name IS NULL
  AND
  end_lat IS NULL
  AND
  end_lng IS NULL; -- 5961 records

/* Because start_lat_null_count and start_lng_null_count were zero so null values of start_station_name column would be indentified based on start_lat and start_lng in the dataset.*/

/* Filling missing values to start_station_name column based on start_lat and start_lng */
SELECT start_station_name, start_lat, start_lng
FROM `Cyclistic.tripdata`
WHERE start_station_name IS NULL;
/* Prechecking start_station_name with one couple value: start_lat = 41.95 and start_lng = -87.83 */
SELECT start_station_name
FROM `Cyclistic.tripdata`
WHERE start_lat = 41.95 and start_lng = -87.83
GROUP BY start_station_name;
/* Results - many stations: 
Plainfield & Irving Park
Panama Ave & Grace St
Plainfield Ave & Irving Park Rd
Pittsburgh Ave & Irving Park
Public Rack - Pittsburgh Ave & Irving Park
Canty Elementary School
Public Rack - Canty Elementary Sc */

/* Filling missing values to end_station_name column based on end_lat and end_lng */
SELECT end_station_name, end_lat, end_lng
FROM `Cyclistic.tripdata`
WHERE end_station_name IS NULL;
/* Prechecking end_station_name with one couple value: end_lat = 41.91 and end_lng = -87.78 */
SELECT end_station_name
FROM `Cyclistic.tripdata`
WHERE end_lat = 41.91 and end_lng = -87.78
GROUP BY end_station_name;
/* Results - many stations:
Public Rack - Austin Blvd & North Ave
Public Rack - Harvey Ave & North Ave
Harvey Ave & North Ave */

/* Checking duplicates in ride_id */
SELECT 
  ride_id, 
  COUNT(*) AS duplicate_count
FROM `Cyclistic.tripdata`
GROUP BY ride_id
HAVING COUNT(*) > 1;

/* Checking the length of values in ride_id */
SELECT 
  LENGTH(ride_id) AS ride_id_length,
  COUNT(ride_id) AS number_of_rows,
FROM `Cyclistic.tripdata`
GROUP BY ride_id_length;

/* Checking unique values of rideable_type, start_station_name, end_station_name, member_casual and if there are any typographical errors*/
SELECT 
  DISTINCT rideable_type, 
  COUNT(rideable_type) AS number_of_rides
FROM `Cyclistic.tripdata`
GROUP BY rideable_type
ORDER BY rideable_type; -- The rideable_type 'docked_bike' refers to bikes that were taken out of circulation by Cyclistic for quality control assessment, so 157201 records under 'docked_bike' would be deleted.

SELECT 
  DISTINCT start_station_name, 
  COUNT(start_station_name) AS number_of_rides
FROM `Cyclistic.tripdata`
GROUP BY start_station_name
ORDER BY start_station_name;

SELECT 
  DISTINCT end_station_name, 
  COUNT(end_station_name) AS number_of_rides
FROM `Cyclistic.tripdata`
GROUP BY end_station_name
ORDER BY end_station_name;

SELECT 
  DISTINCT member_casual,
  COUNT(member_casual) AS number_of_rides
FROM `Cyclistic.tripdata`
GROUP BY member_casual
ORDER BY member_casual;

/* Creating a new table after cleaning and processing data:
   Creating a new column named day_of_week
   Creating a new column named ride_month
   Creating a new column named start_time
   Creating a new column named ride_length_second
   Deleting rows of 'docked_bike'
   Deleting two columns: start_station_id and end_station_id
   Deleting rows where ride_length was negative or 'zero' */
DROP TABLE IF EXISTS `Cyclistic.tripdata_clean`;

CREATE TABLE `Cyclistic.tripdata_clean` AS
SELECT 
  ride_id,
  rideable_type,
  CASE EXTRACT(DAYOFWEEK FROM started_at) 
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday' 
  END AS day_of_week,
  CASE EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
  END AS ride_month,
  EXTRACT(HOUR FROM started_at) AS start_time,
  DATETIME_DIFF(ended_at, started_at, SECOND) AS ride_length_second,
  start_station_name,
  end_station_name,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual
FROM `Cyclistic.tripdata`
WHERE 
  rideable_type IN ('classic_bike', 'electric_bike')
  AND 
  DATETIME_DIFF(ended_at, started_at, SECOND) > 0;

SELECT COUNT(*) AS total_rows
FROM `Cyclistic.tripdata_clean`; -- 5671267 records

/* Calculating total rides of member and casual users */
SELECT
  member_casual,
  COUNT(*) AS ride_count,
  ROUND((COUNT(*) / (SELECT COUNT(*) FROM `Cyclistic.tripdata_clean`)) * 100, 2) AS ride_percentage
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual;

/* Calculating the maximum, minimum, mean, and medium values of ride_length */
SELECT 
  ROUND(MAX(ride_length_second)/60, 2) AS max_ride_length_minute,
  ROUND(MIN(ride_length_second)/60, 2) AS min_ride_length_minute,
  ROUND(AVG(ride_length_second)/60, 2) AS mean_ride_length_minute,
  ROUND((APPROX_QUANTILES(ride_length_second, 2)[OFFSET(1)])/60, 2) AS median_ride_length_minute,
FROM `Cyclistic.tripdata_clean`;

/* Calculating the maximum, minimum, mean, and medium values of ride_length according to member_casual */
SELECT 
  member_casual,
  ROUND(MAX(ride_length_second)/60, 2) AS max_ride_length_minute,
  ROUND(MIN(ride_length_second)/60, 2) AS min_ride_length_minute,
  ROUND(AVG(ride_length_second)/60, 2) AS mean_ride_length_minute,
  ROUND((APPROX_QUANTILES(ride_length_second, 2)[OFFSET(1)])/60, 2) AS median_ride_length_minute
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual;

/* Calculating the mode of day_of_week */
SELECT
  member_casual,
  day_of_week AS mode_day_of_week,
  ride_count AS max_ride_count
FROM (
  SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS ride_count,
    ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(*) DESC) AS rank
  FROM `Cyclistic.tripdata_clean`
  GROUP BY member_casual, day_of_week
)
WHERE rank = 1;

/* Calculating the total number of rides and the average ride length for both member and casual users on a daily basis */
SELECT
  member_casual,
  day_of_week,
  COUNT(*) AS number_of_rides,
  ROUND(AVG(ride_length_second / 60), 2) AS average_ride_length_minute
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual, day_of_week
ORDER BY
  member_casual,
  CASE day_of_week
    WHEN 'Monday' THEN 1
    WHEN 'Tuesday' THEN 2
    WHEN 'Wednesday' THEN 3
    WHEN 'Thursday' THEN 4
    WHEN 'Friday' THEN 5
    WHEN 'Saturday' THEN 6
    WHEN 'Sunday' THEN 7
  END;

/* Calculating the total number of rides and the average ride length for both member and casual users on a monthly basis */
SELECT
  member_casual,
  ride_month,
  COUNT(*) AS number_of_rides,
  ROUND(AVG(ride_length_second / 60), 2) AS average_ride_length_minute
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual, ride_month
ORDER BY
  member_casual,
  CASE ride_month
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
  END;

/* Calculating the total number of rides by start time for both member and casual users throughout the day */
SELECT
  member_casual,
  start_time,
  COUNT(ride_id) AS number_of_rides
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual, start_time
ORDER BY member_casual, start_time;

/* Calculating the total number of rides by start time for both member and casual users by day of the week */
SELECT
  member_casual,
  day_of_week,
  start_time,
  COUNT(ride_id) AS number_of_rides
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual, day_of_week, start_time
ORDER BY member_casual, 
         CASE day_of_week
            WHEN 'Monday' THEN 1
            WHEN 'Tuesday' THEN 2
            WHEN 'Wednesday' THEN 3
            WHEN 'Thursday' THEN 4
            WHEN 'Friday' THEN 5
            WHEN 'Saturday' THEN 6
            WHEN 'Sunday' THEN 7
         END,
         start_time;

/* Identifying the top start stations for both member and casual users */
WITH RankedStartStations AS (
  SELECT
    member_casual,
    start_station_name,
    COUNT(*) AS total_rides,
    ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(*) DESC) AS station_rank
  FROM `Cyclistic.tripdata_clean`
  GROUP BY member_casual, start_station_name
)
SELECT
  member_casual,
  start_station_name,
  total_rides
FROM RankedStartStations
WHERE station_rank <= 10
ORDER BY member_casual, station_rank;

/* Calculating the total number of rides by rideable type for both member and casual users */
SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 2) AS percentage
FROM `Cyclistic.tripdata_clean`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, rideable_type;
