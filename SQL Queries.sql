{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red204\green0\blue78;\red255\green255\blue255;\red44\green55\blue61;
\red39\green78\blue204;\red21\green129\blue62;\red42\green55\blue62;\red0\green0\blue0;\red238\green57\blue24;
\red107\green0\blue1;}
{\*\expandedcolortbl;;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c100000;\cssrgb\c22745\c27843\c30588;
\cssrgb\c20000\c40392\c83922;\cssrgb\c5098\c56471\c30980;\cssrgb\c21569\c27843\c30980;\cssrgb\c0\c0\c0;\cssrgb\c95686\c31765\c11765;
\cssrgb\c50196\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 /* Combining all 12-month datasets into one dataset */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf5 \strokec5 IF\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 EXISTS\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202206-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202207-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202208-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202209-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202210-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202211-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202212-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202301-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202302-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202303-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202304-tripdata`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 UNION\cf4 \strokec4  \cf5 \strokec5 ALL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.202305-tripdata`\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 total_rows\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \strokec4 ; \cf2 \strokec2 -- 5829030 records\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Checking number of null values in each column */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \cf8 \strokec8 total_rows\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 ride_id\cf4 \strokec4             \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_id_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 rideable_type\cf4 \strokec4       \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 rideable_type_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 started_at\cf4 \strokec4          \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 started_at_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 ended_at\cf4 \strokec4            \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ended_at_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 start_station_name_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 start_station_id\cf4 \strokec4    \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 start_station_id_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4    \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 end_station_name_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 end_station_id\cf4 \strokec4      \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 end_station_id_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 start_lat\cf4 \strokec4           \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 start_lat_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 start_lng\cf4 \strokec4           \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 start_lng_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 end_lat\cf4 \strokec4             \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 end_lat_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 end_lng\cf4 \strokec4             \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 end_lng_null_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4       \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 END\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 member_casual_null_count\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \strokec4 ;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Results:\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 start_station_name_null_count = 834545\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 start_station_id_null_count   = 834677\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 end_station_name_null_count   = 891757\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 end_station_id_null_count     = 891898\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 start_lat_null_count          = 0\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 start_lng_null_count          = 0\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 end_lat_null_count            = 5961\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 end_lng_null_count            = 5961 */\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 /* Not able to identifying start_station_name and end_station_name based on start_station_id and end_station_id. SQL Queries as the following */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 start_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf8 \strokec8 start_station_id\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 start_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \strokec4  \cb1 \
\cb3   \cf8 \strokec8 start_station_id\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ; \cf2 \strokec2 -- none record\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf8 \strokec8 end_station_id\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \strokec4  \cb1 \
\cb3   \cf8 \strokec8 end_station_id\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ; \cf2 \strokec2 -- none record\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* 885796 records might be identified based on end_lat and end_lng. However, there were 5961 end_station_name not identified based on end_lat and end_lng because both end_lat and end_lng were null. SQL Queries as the following */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf8 \strokec8 end_lat\cf4 \strokec4 , \cf8 \strokec8 end_lng\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \cb1 \strokec4 \
\cb3   \cf8 \strokec8 end_lat\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \cb1 \strokec4 \
\cb3   \cf8 \strokec8 end_lng\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ; \cf2 \strokec2 -- 885796 records\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf8 \strokec8 end_lat\cf4 \strokec4 , \cb1 \
\cb3   \cf8 \strokec8 end_lng\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \cb1 \strokec4 \
\cb3   \cf8 \strokec8 end_lat\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \cb1 \strokec4 \
\cb3   \cf8 \strokec8 end_lng\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ; \cf2 \strokec2 -- 5961 records\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Because start_lat_null_count and start_lng_null_count were zero so null values of start_station_name column would be indentified based on start_lat and start_lng in the dataset.*/\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 /* Filling missing values to start_station_name column based on start_lat and start_lng */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4 , \cf8 \strokec8 start_lat\cf4 \strokec4 , \cf8 \strokec8 start_lng\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Prechecking start_station_name with one couple value: start_lat = 41.95 and start_lng = -87.83 */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf10 \strokec10 start_lat\cf4 \strokec4  = \cf9 \strokec9 41.95\cf4 \strokec4  \cf5 \strokec5 and\cf4 \strokec4  \cf10 \strokec10 start_lng\cf4 \strokec4  = \cf7 \strokec7 -\cf9 \strokec9 87.83\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4 ;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Results - many stations: \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Plainfield & Irving Park\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Panama Ave & Grace St\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Plainfield Ave & Irving Park Rd\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Pittsburgh Ave & Irving Park\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Public Rack - Pittsburgh Ave & Irving Park\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Canty Elementary School\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Public Rack - Canty Elementary Sc */\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 /* Filling missing values to end_station_name column based on end_lat and end_lng */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4 , \cf8 \strokec8 end_lat\cf4 \strokec4 , \cf8 \strokec8 end_lng\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Prechecking end_station_name with one couple value: end_lat = 41.91 and end_lng = -87.78 */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf10 \strokec10 end_lat\cf4 \strokec4  = \cf9 \strokec9 41.91\cf4 \strokec4  \cf5 \strokec5 and\cf4 \strokec4  \cf10 \strokec10 end_lng\cf4 \strokec4  = \cf7 \strokec7 -\cf9 \strokec9 87.78\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4 ;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Results - many stations:\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Public Rack - Austin Blvd & North Ave\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Public Rack - Harvey Ave & North Ave\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Harvey Ave & North Ave */\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 /* Checking duplicates in ride_id */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 ride_id\cf4 \strokec4 , \cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 duplicate_count\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 ride_id\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf7 \strokec7 >\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Checking the length of values in ride_id */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 LENGTH\cf7 \strokec7 (\cf8 \strokec8 ride_id\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_id_length\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 ride_id\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rows\cf4 \strokec4 ,\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 ride_id_length\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Checking unique values of rideable_type, start_station_name, end_station_name, member_casual and if there are any typographical errors*/\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 DISTINCT\cf4 \strokec4  \cf8 \strokec8 rideable_type\cf4 \strokec4 , \cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 rideable_type\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 rideable_type\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 rideable_type\cf4 \strokec4 ; \cf2 \strokec2 -- The rideable_type 'docked_bike' refers to bikes that were taken out of circulation by Cyclistic for quality control assessment, so 157201 records under 'docked_bike' would be deleted.\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 DISTINCT\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 start_station_name\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 start_station_name\cf4 \strokec4 ;\cb1 \
\
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 DISTINCT\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4 , \cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 end_station_name\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 end_station_name\cf4 \strokec4 ;\cb1 \
\
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 DISTINCT\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 member_casual\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Creating new table after cleaning and processing data:\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Creating a new column named day_of_week\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Creating a new column named ride_month\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Creating a new column named start_time\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Creating a new column named ride_length_second\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Deleting rows of 'docked_bike'\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Deleting two columns: start_station_id and end_station_id\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2    Deleting rows where ride_length was negative or 'zero' */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 DROP\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf5 \strokec5 IF\cf4 \strokec4  \cf5 \strokec5 EXISTS\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \strokec4 ;\cb1 \
\
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 ride_id\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 rideable_type\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 EXTRACT\cf7 \strokec7 (\cf8 \strokec8 DAYOFWEEK\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf8 \strokec8 started_at\cf7 \strokec7 )\cf4 \strokec4  \cb1 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Sunday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 2\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Monday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 3\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Tuesday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 4\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Wednesday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 5\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Thursday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 6\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Friday'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 7\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'Saturday'\cf4 \strokec4  \cb1 \
\cb3   \cf5 \strokec5 END\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 day_of_week\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 CASE\cf4 \strokec4  \cf5 \strokec5 EXTRACT\cf7 \strokec7 (\cf8 \strokec8 MONTH\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf8 \strokec8 started_at\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'January'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 2\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'February'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 3\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'March'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 4\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'April'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 5\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'May'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 6\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'June'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 7\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'July'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 8\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'August'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 9\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'September'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 10\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'October'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 11\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'November'\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf9 \strokec9 12\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf6 \strokec6 'December'\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 END\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_month\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 EXTRACT\cf7 \strokec7 (\cf8 \strokec8 HOUR\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf8 \strokec8 started_at\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 start_time\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 DATETIME_DIFF\cf7 \strokec7 (\cf8 \strokec8 ended_at\cf4 \strokec4 , \cf8 \strokec8 started_at\cf4 \strokec4 , \cf8 \strokec8 SECOND\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_length_second\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_station_name\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 end_station_name\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_lat\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_lng\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 end_lat\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 end_lng\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 member_casual\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 rideable_type\cf4 \strokec4  \cf5 \strokec5 IN\cf4 \strokec4  \cf7 \strokec7 (\cf6 \strokec6 'classic_bike'\cf4 \strokec4 , \cf6 \strokec6 'electric_bike'\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \strokec4  \cb1 \
\cb3   \cf5 \strokec5 DATETIME_DIFF\cf7 \strokec7 (\cf8 \strokec8 ended_at\cf4 \strokec4 , \cf8 \strokec8 started_at\cf4 \strokec4 , \cf8 \strokec8 SECOND\cf7 \strokec7 )\cf4 \strokec4  \cf7 \strokec7 >\cf4 \strokec4  \cf9 \strokec9 0\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 total_rows\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \strokec4 ; \cf2 \strokec2 -- 5671267 records\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating total rides of member and casual users */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_count\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 ((\cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf7 \strokec7 /\cf4 \strokec4  \cf7 \strokec7 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf7 \strokec7 ))\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf9 \strokec9 100\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_percentage\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the maximum, minimum, mean, medium values of ride_length */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 MAX\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 max_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 MIN\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 min_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 AVG\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 mean_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 ((\cf5 \strokec5 APPROX_QUANTILES\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )[\cf5 \strokec5 OFFSET\cf7 \strokec7 (\cf9 \strokec9 1\cf7 \strokec7 )])/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 median_ride_length_minute\cf4 \strokec4 ,\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the maximum, minimum, mean, medium values of ride_length according to member_casual */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 MAX\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 max_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 MIN\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 min_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 AVG\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf7 \strokec7 )/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 mean_ride_length_minute\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 ((\cf5 \strokec5 APPROX_QUANTILES\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )[\cf5 \strokec5 OFFSET\cf7 \strokec7 (\cf9 \strokec9 1\cf7 \strokec7 )])/\cf9 \strokec9 60\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 median_ride_length_minute\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the mode of day_of_week */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 day_of_week\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 mode_day_of_week\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 ride_count\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 max_ride_count\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\cb3     \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3     \cf8 \strokec8 day_of_week\cf4 \strokec4 ,\cb1 \
\cb3     \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 ride_count\cf4 \strokec4 ,\cb1 \
\cb3     \cf5 \strokec5 ROW_NUMBER\cf7 \strokec7 ()\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \strokec4  \cf7 \strokec7 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 DESC\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf5 \strokec5 rank\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 day_of_week\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf7 \cb3 \strokec7 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf10 \strokec10 rank\cf4 \strokec4  = \cf9 \strokec9 1\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the total number of rides and the average ride length for both member and casual users on a daily basis */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 day_of_week\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 AVG\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf4 \strokec4  \cf7 \strokec7 /\cf4 \strokec4  \cf9 \strokec9 60\cf7 \strokec7 )\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 average_ride_length_minute\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 day_of_week\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 CASE\cf4 \strokec4  \cf8 \strokec8 day_of_week\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Monday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Tuesday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Wednesday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 3\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Thursday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 4\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Friday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 5\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Saturday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 6\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Sunday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 7\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 END\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the total number of rides and the average ride length for both member and casual users on a monthly basis */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 ride_month\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 AVG\cf7 \strokec7 (\cf8 \strokec8 ride_length_second\cf4 \strokec4  \cf7 \strokec7 /\cf4 \strokec4  \cf9 \strokec9 60\cf7 \strokec7 )\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 average_ride_length_minute\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 ride_month\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 CASE\cf4 \strokec4  \cf8 \strokec8 ride_month\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'January'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'February'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'March'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 3\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'April'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 4\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'May'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 5\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'June'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 6\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'July'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 7\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'August'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 8\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'September'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 9\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'October'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 10\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'November'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 11\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'December'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 12\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 END\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the total number of rides by start time for both member and casual users throughout the day */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_time\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 ride_id\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 start_time\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 start_time\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the total number of rides by start time for both member and casual users by day of the week */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 day_of_week\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_time\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (\cf8 \strokec8 ride_id\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 number_of_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 day_of_week\cf4 \strokec4 , \cf8 \strokec8 start_time\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3          \cf5 \strokec5 CASE\cf4 \strokec4  \cf8 \strokec8 day_of_week\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Monday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 1\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Tuesday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Wednesday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 3\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Thursday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 4\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Friday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 5\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Saturday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 6\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf6 \strokec6 'Sunday'\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 7\cf4 \cb1 \strokec4 \
\cb3          \cf5 \strokec5 END\cf4 \strokec4 ,\cb1 \
\cb3          \cf8 \strokec8 start_time\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Identifying the top start stations for both member and casual users */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 WITH\cf4 \strokec4  \cf8 \strokec8 RankedStartStations\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\cb3     \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3     \cf8 \strokec8 start_station_name\cf4 \strokec4 ,\cb1 \
\cb3     \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 total_rides\cf4 \strokec4 ,\cb1 \
\cb3     \cf5 \strokec5 ROW_NUMBER\cf7 \strokec7 ()\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \strokec4  \cf7 \strokec7 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 DESC\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 station_rank\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 start_station_name\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf7 \cb3 \strokec7 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 start_station_name\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 total_rides\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf8 \strokec8 RankedStartStations\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cf8 \strokec8 station_rank\cf4 \strokec4  \cf7 \strokec7 <=\cf4 \strokec4  \cf9 \strokec9 10\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 station_rank\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Calculating the total number of rides by rideable type for both member and casual users */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3   \cf8 \strokec8 member_casual\cf4 \strokec4 ,\cb1 \
\cb3   \cf8 \strokec8 rideable_type\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 total_rides\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 ROUND\cf7 \strokec7 (\cf5 \strokec5 COUNT\cf7 \strokec7 (*)\cf4 \strokec4  \cf7 \strokec7 *\cf4 \strokec4  \cf9 \strokec9 100\cf4 \strokec4  \cf7 \strokec7 /\cf4 \strokec4  \cf5 \strokec5 SUM\cf7 \strokec7 (\cf5 \strokec5 COUNT\cf7 \strokec7 (*))\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \strokec4  \cf7 \strokec7 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf7 \strokec7 )\cf4 \strokec4 , \cf9 \strokec9 2\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf8 \strokec8 percentage\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf6 \strokec6 `Cyclistic.tripdata_clean`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 rideable_type\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4 , \cf8 \strokec8 rideable_type\cf4 \strokec4 ;}