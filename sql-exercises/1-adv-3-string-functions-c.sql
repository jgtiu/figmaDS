-- Create the same concatenated location field, but using the || syntax instead of CONCAT.
SELECT '(' || lat || ', ' || lon || ')' AS concat_location,
       location
  FROM tutorial.sf_crime_incidents_2014_01
