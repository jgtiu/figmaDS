-- Write a query that creates a date column formatted YYYY-MM-DD. 
SELECT incidnt_num,
       date,
       SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) || '-' || SUBSTR(date, 4, 2) AS cleaned_date
  FROM tutorial.sf_crime_incidents_2014_01
