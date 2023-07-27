This case study is part of the Google Data Analytics Program.

# Scenario

You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

# Characters and teams

- **Cyclistic:** A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.
- **Lily Moreno:** The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.
- **Cyclistic marketing analytics team:** A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.
- **Cyclistic executive team:** The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

# About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

# Business task

Moreno has set a clear goal: Design marketing strategies aimed at **converting casual riders into annual members**. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

Three questions will guide the future marketing program:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: ***How do annual members and casual riders use Cyclistic bikes differently?***

# Businness objective

The primary goal is to develop effective marketing strategies for converting casual bike riders into annual members. This will be achieved through an analysis of the distinct usage patterns of Cyclistic bike-share between annual members and casual riders.

Key stakeholders: Cyclistic executive team, Director of Marketing (Lily Moreno), and Marketing Analytics team.

# Data source

The previous 12 months of Cyclistic trip data, **from June 2022 to May 2023**, will be used for this project: https://divvy-tripdata.s3.amazonaws.com/index.html. 

The data has been made available by Motivate International Inc. under this license: https://ride.divvybikes.com/data-license-agreement. 

Each dataset is a CSV (comma-separated values) file containing details of every ride logged by Cyclistic customers. There are a total of 13 columns in each:

ride_id            : unique Ride ID

rideable_type      : Bike type (Classic, Docked, Electric)

started_at         : Trip start day and time

ended_at           : Trip end day and time

start_station_name : Trip start station name

start_station_id   : Trip start station ID

end_station_name   : Trip end station name

end_station_id     : Trip end station ID

start_lat          : Trip start latitude

start_lng          : Trip start longitude

end_lat            : Trip end latitude

end_lng            : Trip end longitude

member_casual      : Rider type (Member or Casual)

In terms of credibility and integrity, the data satisfies the **ROCCC** standard:

- **Reliable:** The data used for analysis has a large sample size that reflects the population size being studied, ensuring reliable results.
- **Original:** It is possible to locate and utilize the primary source of data.
- **Comprehensive:** The data is clear and complete, containing all the essential information required to address the question, without any human errors or missing data.
- **Current:** The data used in analysis is relevant and up-to-date, indicating that the source regularly refreshes its data to maintain accuracy.
- **Cited:** The source has been vetted, ensuring the credibility and reliability of the data used for analysis.

To maintain data integrity, original files were securely stored while creating reference copies. SQL queries via BigQuery were used for efficient data preparation, cleaning, processing, and analysis, enabling complex queries and transformations.

# Data limitation

Due to data-privacy concerns, I am unable to utilize personally identifiable information of riders, including details like age, gender, or address. Consequently, I cannot establish connections between pass purchases and credit card numbers to determine whether casual riders reside within the Cyclistic service area or have made multiple single-pass purchases. This limitation also restricts the analysis of demographic aspects.

# A summary of processing steps

## Data Exploration

- Got familiar with and understood the data
- Merged individual monthly data frames into one large data frame (table namely trip_data with **5829030 rows**)

## Data Cleaning and Manipulation

- Compared column names and data types and consolidated consistent
- Checked null values in each column
- Checked duplicates in each column
- Checked unique values and if there were any typographical errors
- Verified data integrity
- Created a table namely tripdata_clean (**5671267 rows, 157763 rows dropped**)
    - Created a column called day_of_week
    - Created a column called ride_month
    - Created a column called start_time
    - Created a column called ride_length_second
    - Deleted rows of 'docked_bike'
    - Deleted two columns: start_station_id and end_station_id
    - Deleted rows where ride_length was negative or 'zero’

## Data Analysis

- Calculated total rides of member and casual users
- Calculated the maximum, minimum, mean, and medium values of ride_length
- Calculated the maximum, minimum, mean, and medium values of ride_length for both member and casual users
- Calculated the mode of day_of_week
- Calculated the total number of rides and the average ride length for both member and casual users on a daily basis
- Calculated the total number of rides and the average ride length for both member and casual users on a daily basis
- Calculated the total number of rides and the average ride length for both member and casual users on a monthly basis
- Calculated the total number of rides by start time for both member and casual users throughout the day
- Calculated the total number of rides by start time for both member and casual users by day of the week
- Identified the top start stations for both member and casual users
- Calculated the total number of rides by rideable type for both member and casual users

## Interpretation

Analyzed the results of the data analysis to draw meaningful conclusions and insights.

## Visualization

Represented the data and analysis results visually using charts and graphs via Power BI.

## Presentation

Prepared a comprehensive summary presentation of the findings and recommendations for stakeholders.
