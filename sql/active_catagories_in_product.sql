SELECT c.name, COUNT(p.productid) AS active_products FROM categories c JOIN products p ONc.categoryid = p.categoryid WHERE p.isactive = TRUE GROUP BY c.name;
