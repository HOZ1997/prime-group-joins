
1. Get all customers and their addresses.
Query
SELECT * FROM customers JOIN addresses on customers.id = customer_id ;

2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id JOIN products on products.id = line_items.product_id; 

3. Which warehouses have cheetos?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'cheetos';Which warehouses have diet pepsi?


4. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM customers JOIN addresses on customers.id = customer_id JOIN orders ON addresses.id = orders.address_id; 


5. How many customers do we have? 4
SELECT COUNT(ID)FROM customers;

6. How many products do we carry? 7
SELECT COUNT(ID)FROM products;


7. What is the total available on-hand quantity of diet pepsi?
SELECT SUM (on_hand) FROM products JOIN warehouse_product ON products.id = warehouse_product.product_id WHERE products.description = 'diet pepsi';

Stretch
How much was the total cost for each order?
How much has each customer spent in total?
How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
