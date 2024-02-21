SELECT
   EXTRACT(HOUR FROM o.datetime) AS hour_of_day,
   COUNT(*) AS orders_count,
   SUM(o.totalamount) AS total_sales
FROM orders o
GROUP BY hour_of_day
ORDER BY hour_of_day;