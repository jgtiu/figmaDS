-- Write a query modification of the above example query that shows the duration of each ride as a percentage of the total time accrued by riders from each start_terminal

-- Source: https://mode.com/sql-tutorial/sql-window-functions

SELECT start_terminal,
       duration_seconds,
       SUM(duration_seconds) OVER (PARTITION BY start_terminal) AS start_terminal_sum,
       (duration_seconds/SUM(duration_seconds) OVER (PARTITION BY start_terminal))*100 AS pct_of_total_time
  FROM tutorial.dc_bikeshare_q1_2012
 WHERE start_time < '2012-01-08'
 ORDER BY 1, 4 DESC
