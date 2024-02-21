SELECT
  EXTRACT(YEAR FROM date_trunc('week', DateTime)) AS OrderYear,
  EXTRACT(WEEK FROM date_trunc('week', DateTime)) AS OrderWeek,
  COUNT(*) AS NumberOfOrders
FROM Orders
WHERE DateTime >= CURRENT_DATE - INTERVAL '104 weeks'
GROUP BY OrderYear, OrderWeek
ORDER BY OrderYear, OrderWeek;
