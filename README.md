# Overview
This repository contains QL queries and documentation for analyzing a car-sharing dataset. The dataset includes information about customer demand rates, weather conditions and temperature data collected on an hourly basis between January 2017 and August 2018.
# Files
- **SQL_queries.sql**: Contains SQL queries used to analyze the dataset and answer specific business questions.
- **Data_Model_ERD.png**: Entity-relationship diagram (ERD) illustrating the data model and relationships between tables.
- **Data_Dictionary.md**: Documentation describing the structure and concepts of each table in the dataset.
- **README.md**: This file provides an overview of the repository and instructions for accessing and using the SQL queries.

Click **>>** [here]() **<<** to see these files.
# SQL Queries
1. Highest Demand Rate in 2017:
   - Query to find the date and time with the highest demand rate in 2017.
2. Average demand rates by Weekday, Month and Season:
   - Query to find the highest and lowest average demadn rates by weekday, month, and season in 2017.
3. Hourly Demand Rates by weekday in 2017:
   - Query to find the average demand rate by hour for a selected weekday in 2017.
4. Weather Analysis for 2017:
   - Query to analyze weather comnditions in 2017, including the prevelance of cold, mild or hot weather and average, highest and lowest wind speed and humidity by month.
5. Average Demand Rates by Weather Category:
   - Quer to find the average demand rate for each weather category(cold, mild, hot) in 2017.
6. Weather Analysis for the Highest Demand Month in 2017:
   - Query to analyze weather conditions for the month with the highest average demand rate in 2017.

# Instructions
1. Clone or download this repository to your local machine.
2. Open the SQL_queries.sql file to view the SQL queries.
3. Execute the SQL queries in your preferred SQL database management system (e.g. MySQL Workbench, SQLite).
4. Review the results and analysis provided by each query.
5. Refer to the Data_Dictionary.md file for descriptions of table structures and column definitions.

# Data Source
The original dataset was obtained from a car-sharing company and includes hourly data on customer demand rates, weather conditions, and temperature. Due to privacy considerations, the dataset has been anonymized and sanitized.
### You can view the data here:
[carsharing_df](https://drive.google.com/file/d/1N0a2XxdrOSwa5B1ecqBapFnIKl5EEw8J/view?usp=drive_link)
[temperature](https://drive.google.com/file/d/1ptrgXK9YwpJOpGs49CRj7fv1DXbhmPF_/view?usp=drive_link)
[time](https://drive.google.com/file/d/1xlt6mZejAbvA3w6kEQHH0ZfmK6d6YKf5/view?usp=drive_link)
[weather](https://drive.google.com/file/d/19y_ECz_vIeygl6ztTOdeIO245DHY_a4F/view?usp=drive_link)

# Author
[Samuel David](https://www.linkedin.com/in/samuelneche/) under the supervision of Datafied Technologies.

# License
The project is licensed under the Datafied Technologies - see the LICENSE for details.
