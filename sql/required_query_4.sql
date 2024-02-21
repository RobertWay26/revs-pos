SELECT
   p.name AS product_name,
   COUNT(DISTINCT pi.ingredientid) AS ingredient_count
FROM productingredients pi
        JOIN products p ON pi.productid = p.productid
GROUP BY p.name
ORDER BY ingredient_count DESC
LIMIT 20;