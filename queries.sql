-- Select All Products
select * from "Products";
-- Select All Clients
select * from "Customers";
-- Select all order lines from an order
select * from "Order Lines" where order_id = (select id from "Orders" LIMIT 1);
-- Select all the products with the profits
select p.*,SUM(ol.total) as profits from "Products" as p join "Order Lines" as ol on ol.product_id = p.id GROUP BY p.id;
-- Select All orders a product has
select o.* from "Orders" as o join "Order Lines" as ol on o.id = ol.order_id where ol.product_id = (select id from "Products" LIMIT 1);
-- Select the total of sales of X product
select p.id,p.name,SUM(ol.quantity) as sales,SUM(ol.total) as profits from "Products" as p join "Order Lines" as ol on ol.product_id = p.id WHERE p.id = 19 GROUP BY p.id;
-- Update a Product price by 1.5
update "Products" SET price = price * 1.5 where id = 19;
-- Select All the customers who bought an X product
select DISTINCT c.* from "Customers" as c join "Orders" as o on o.customer_id = c.id join "Order Lines" as ol on o.id = ol.order_id WHERE ol.product_id = 16;
-- Select All orders between dates X and Y
select o.* from "Orders" as o where o.date BETWEEN '2022-09-27' AND '2022-11-29';
-- Select All products with price greater than 4.5
select p.* from "Products" as p where p.price > 4.5;
-- Select All the products a Customer has bought
select DISTINCT o.customer_id as customer,p.* from "Products" as p join "Order Lines" as ol on ol.product_id = p.id join "Orders" as o on o.id = ol.order_id where o.customer_id = 1;
-- Select the total amount of products a X customer bought between 2 dates
select c.*,SUM(ol.quantity) as "amount of products" from "Order Lines" as ol join "Orders" as o on o.id = ol.order_id join "Customers" as c on c.id = o.customer_id where (o.date BETWEEN '2022-09-27' AND '2022-11-29') AND c.id = 1 GROUP BY c.id;
-- Select what is the most purchased product
select p.*,SUM(ol.quantity) as sales from "Order Lines" as ol join "Products" as p on p.id = ol.product_id GROUP BY p.id ORDER BY sales DESC LIMIT 1;
-- Delete an order
delete from "Orders" where id = (select id from "Orders" LIMIT 1);

