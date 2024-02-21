SELECT
   DATE(o.datetime) AS date,
   SUM(o.totalamount) AS total_sales
FROM orders o
GROUP BY date
ORDER BY total_sales DESC
LIMIT 10;