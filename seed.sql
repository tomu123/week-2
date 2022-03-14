INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Cordell','Boyle','Apt. 860 50966 Sonia Drives, Larrystad, LA 37236-0658','+1-868 677.905.3679');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Michiko','Larkin','Apt. 685 56952 Tambra Motorway, Cronafort, RI 22540','+687 1-597-146-3605');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Derick','Schroeder','Apt. 647 16772 Marcel Stravenue, Hankside, OK 95392','+213 188.973.0290');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Rodger','Willms','Suite 277 97961 Cristopher Harbors, North Craigborough, TX 80953','+676 684-302-9612');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Hyon','Reilly','56092 Kozey Wall, South Fredrick, WA 34705-5370','+691 258.077.6029');
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000HB4DU0','Synergistic Wool Computer','Et repellat eum tenetur.',47.9,94);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000JQ0JNS','Durable Cotton Car','Magni molestiae omnis consequuntur.',72.5,45);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000I6VJ7O','Ergonomic Marble Shoes','Itaque optio ducimus quidem.',28.0,84);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0000DE0T8','Fantastic Iron Clock','Consequatur consectetur inventore voluptas.',22.9,60);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000BJ0Z50','Small Concrete Keyboard','Omnis tempore iste rerum.',5.5,82);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000LCZCRS','Intelligent Steel Chair','Illo officia odit deserunt.',6.8,53);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0002F03NW','Synergistic Plastic Bag','Vitae aperiam nemo eaque.',59.0,59);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A3PVZ6','Awesome Steel Pants','Dolores dolorem a quos.',7.5,78);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A6LQZ2','Enormous Marble Knife','Et cumque aut porro.',10.6,41);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000HB4DU0','Fantastic Rubber Computer','Minima cumque atque ab.',48.0,94);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A3LC18','Aerodynamic Silk Bench','Dolorum soluta rerum quia.',43.2,43);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000NI7RW8','Synergistic Wool Bench','Laborum eveniet sed quas.',80.3,91);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0002SZELK','Enormous Wooden Clock','Ipsum nobis possimus assumenda.',6.9,63);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B00067FMXM','Aerodynamic Granite Computer','Itaque voluptas dolor expedita.',99.7,97);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000B7CBWM','Practical Silk Hat','Nihil qui tenetur ullam.',6.5,39);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B00067FMXM','Enormous Rubber Clock','Dolore recusandae asperiores rerum.',6.9,71);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000Q72CSA','Ergonomic Rubber Keyboard','Earum impedit facilis nihil.',13.3,35);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0002SUQUY','Lightweight Paper Clock','Deserunt incidunt nobis sunt.',40.6,92);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A3K6TM','Practical Copper Bag','Ex deleniti ipsum officia.',79.2,95);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0000DHVM5','Rustic Granite Watch','Temporibus eos fugit ut.',24.6,61);
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-09-28',2,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 1,3,3,price FROM public."Products" WHERE id = 3;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-11-28',1,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 2,2,5,price FROM public."Products" WHERE id = 2;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 2,3,5,price FROM public."Products" WHERE id = 3;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-02-03',3,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,11,1,price FROM public."Products" WHERE id = 11;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,10,3,price FROM public."Products" WHERE id = 10;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,19,5,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-11-11',2,'completed');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 4,16,1,price FROM public."Products" WHERE id = 16;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-03-12',2,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 5,2,2,price FROM public."Products" WHERE id = 2;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-09-07',4,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,18,1,price FROM public."Products" WHERE id = 18;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,8,2,price FROM public."Products" WHERE id = 8;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,14,2,price FROM public."Products" WHERE id = 14;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,4,5,price FROM public."Products" WHERE id = 4;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,9,3,price FROM public."Products" WHERE id = 9;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-07-14',4,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,1,5,price FROM public."Products" WHERE id = 1;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,18,1,price FROM public."Products" WHERE id = 18;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,17,5,price FROM public."Products" WHERE id = 17;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,19,2,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,16,2,price FROM public."Products" WHERE id = 16;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-01-03',1,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,20,4,price FROM public."Products" WHERE id = 20;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,3,3,price FROM public."Products" WHERE id = 3;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,17,3,price FROM public."Products" WHERE id = 17;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,5,2,price FROM public."Products" WHERE id = 5;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,15,3,price FROM public."Products" WHERE id = 15;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-01-04',5,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 9,16,4,price FROM public."Products" WHERE id = 16;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 9,20,4,price FROM public."Products" WHERE id = 20;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-05-04',4,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 10,6,1,price FROM public."Products" WHERE id = 6;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 10,3,1,price FROM public."Products" WHERE id = 3;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 10,13,3,price FROM public."Products" WHERE id = 13;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 10,12,1,price FROM public."Products" WHERE id = 12;
