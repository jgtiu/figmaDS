-- Concatenate the lat and lon fields to form a field that is equivalent to the location field. (Note that the answer will have a different decimal precision.)
SELECT CONCAT('(', lat, ', ', lon, ')') AS concat_location,
       location
  FROM tutorial.sf_crime_incidents_2014_01
