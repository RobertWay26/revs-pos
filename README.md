# Rev's Grille POS

# Group Members:
Mohammad Rafay  
Amaan Chaudhry  
Ezra Jeter  
Aiden Stickney  
Robert Way  
Roshan Sreedhar



__Our correctness-demonstrating scripts:__
<u>Retrieve All Active Products within sides Category</u>
This SQL script retrieves all active products within the "Sides" category. It selects the name, price, and image URL of products that are marked as active and belong to the "Sides" category.

<u>“Find Products with Low Inventory Items”</u>
This script finds products with low inventory items. It selects the name of the product and the quantity available from the inventory items table where the quantity available is less than or equal to the reorder level.

<u>“Report Total Sales by Product”</u>
This SQL script generates a report of total sales by product. It calculates the total quantity sold and the total sales amount for each product by joining the order details with the products table and grouping the results by product name.

<u>“Report on Orders grouped by Status”</u>
This script provides a report on orders grouped by status. It counts the number of orders and calculates the total sales amount for each order status by grouping the orders table by status.

<u>“List of Orders Placed on a 4/9/2023 with Details”</u>
This script lists orders placed on April 9, 2023, along with their details such as order ID, datetime, total amount, status, product name, and quantity. It joins the orders, order details, and products tables to retrieve the required information for the specified date.

<u>“Updates Inventory After Restocking 50 fries”</u>
This script updates the inventory after restocking 50 units of fries. It increases the quantity available for fries by 50 and updates the last restock date for the fries' ingredients.

<u>“Deactivate Products Not Sold in Last Year”</u>
This SQL updates products that have not been sold in the last year by deactivating them. It sets the isActive flag to FALSE for products whose IDs are not found in the order details table for orders placed within the past year.

<u>“List Categories with the Number of Active Products”</u>
This script lists categories with the number of active products within each category. It counts the number of active products for each category by joining the categories and products tables and filtering active products.

<u>“Find Orders Above $150”</u>
This script selects orders with a total amount above $150. It retrieves order ID, datetime, total amount, and status from the orders table where the total amount exceeds $150.

<u>“Average Price of Products within Each Category”</u>
This SQL script calculates the average price of products within each category. It calculates the average price for each category by joining the categories and products tables and grouping the results by category name.

<u>“Sales Trend per month for Fries”</u>
This script shows the sales trend per month for fries. It calculates the total quantity of fries sold each month by joining the orders and order details tables and filtering for fries, then grouping the results by month.

<u>“Select Count of Orders Grouped by Week”</u>
This script selects the count of orders grouped by week. It extracts the year and week number from the order datetime, counts the number of orders for each week over the past year, and orders the results by year and week number.

<u>“Select Count of Orders, Sum of Order Total Grouped by Hour”</u>
This script selects the count of orders and the sum of orders total grouped by hour of the day. It extracts the hour from the order datetime, counts the number of orders, and calculates the total sales amount for each hour.

<u>“Select Top 10 Sums of Order Total Grouped by Day in Descending Order by Order Total”</u>
This script selects the top 10 sums of order total grouped by day in descending order by order total. It calculates the total sales amount for each day and selects the top 10 days with the highest sales.

<u>“Select Count of Inventory Items from Inventory and Menu Grouped by Menu Item”</u>
This script selects the count of inventory items from the inventory and menu grouped by menu item. It counts the number of unique ingredients for each product by joining the product ingredients and products tables and orders the results by ingredient count in descending order, limiting to the top 20 results.
