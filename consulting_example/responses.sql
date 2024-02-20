--Question 1: Top 5 customers who purchased product category "phones". 
--Join orders to customers to products to match sales to product category
--Group by customer name and limit to top 5
SELECT customer.name as customer_name, 
    SUM(sales) as sale
FROM orders
LEFT JOIN customer
  ON orders.customer_id = customer.id
LEFT JOIN product
  ON product.id = orders.product_id
WHERE category = "Phones"
ORDER BY 2 desc
LIMIT 5;

--Question 2: Top 2 customers who purchased product category "paper". 
--Join orders to customers to products to match sales to product category
--Group by customer name and limit to top 2
SELECT customer.name as customer_name, 
    SUM(sales) as sale
FROM orders
LEFT JOIN customer
  ON orders.customer_id = customer.id
LEFT JOIN product
  ON product.id = orders.product_id
WHERE category = "Paper"
ORDER BY 2 desc
LIMIT 2;

--Rest of queries and brief explanation of logic here
--[Note for students: queries above are for illustrative purposes only.]
