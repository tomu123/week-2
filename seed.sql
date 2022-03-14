INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Chan','Dietrich','493 Hilario Walks, North Henry, RI 46222','+32 450-638-1361');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Deeann','Borer','Apt. 307 5326 Geoffrey Manors, New Shanellborough, OR 80729-8847','+679 1-335-471-4813');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Travis','Kuhlman','85048 Willie Pike, West Markus, IL 09763','+670 1-305-635-4182');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Lavern','Schaefer','606 Shannon Cliff, Paulitaton, MN 93891','+257 1-701-720-1165');
INSERT INTO public."Customers"(first_name,last_name,address,phone)
VALUES('Lorraine','White','Apt. 684 15753 Monty Inlet, Lake Shandaland, TN 65299-3116','+34 389-829-8636');
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000BHP3T0','Heavy Duty Copper Gloves','Et quam explicabo reiciendis.',18.7,51);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000COF89C','Small Leather Computer','Facere expedita accusamus et.',73.1,75);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A1AQWQ','Durable Cotton Pants','In fuga quia similique.',2.6,60);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A2SP0K','Synergistic Iron Knife','Cupiditate error odio ad.',95.1,57);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000BJ20Y4','Ergonomic Copper Keyboard','Neque expedita ratione ea.',13.2,51);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000BJ5JHE','Rustic Wooden Gloves','Enim cum unde impedit.',24.0,56);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0000DGTOF','Mediocre Marble Bottle','Autem quia rerum qui.',40.1,49);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0009R9L7W','Heavy Duty Bronze Bench','Officiis distinctio eos delectus.',12.8,77);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B00067668W','Practical Silk Gloves','Est consequatur autem quae.',92.9,64);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0000DYZW5','Sleek Cotton Bag','Tempore voluptatibus praesentium repellat.',34.7,71);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0000DGWB4','Mediocre Granite Watch','Commodi vel iusto illum.',10.0,69);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000NMKCKI','Gorgeous Concrete Bottle','Veritatis et quisquam tempora.',1.6,72);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000A6WENA','Synergistic Concrete Keyboard','Mollitia reiciendis ut ipsum.',26.7,92);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B00067PA2U','Lightweight Wool Bottle','Suscipit veniam autem rerum.',80.2,54);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000ML8E7I','Aerodynamic Iron Shirt','Dolores vel facilis eos.',79.0,49);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000JR91YA','Sleek Wooden Shoes','Repudiandae ut sapiente ut.',15.2,89);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000CR7COS','Ergonomic Paper Table','In debitis voluptatum consequatur.',8.1,51);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B000B5MVJM','Mediocre Paper Car','Cumque vitae maiores voluptatem.',75.9,95);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B0009QMECC','Heavy Duty Cotton Gloves','Id sit magnam esse.',77.9,45);
INSERT INTO public."Products"(sku,name,description,price,stock)
VALUES('B00066USX2','Durable Copper Hat','Sint at rerum amet.',88.7,90);
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-03-14',1,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 1,9,4,price FROM public."Products" WHERE id = 9;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 1,3,4,price FROM public."Products" WHERE id = 3;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 1,17,3,price FROM public."Products" WHERE id = 17;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 1,19,3,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-03-05',3,'completed');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 2,7,5,price FROM public."Products" WHERE id = 7;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 2,11,4,price FROM public."Products" WHERE id = 11;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 2,18,3,price FROM public."Products" WHERE id = 18;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-11-26',1,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,4,2,price FROM public."Products" WHERE id = 4;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,5,2,price FROM public."Products" WHERE id = 5;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,6,3,price FROM public."Products" WHERE id = 6;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,19,3,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 3,20,2,price FROM public."Products" WHERE id = 20;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-10-04',3,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 4,4,1,price FROM public."Products" WHERE id = 4;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 4,19,3,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-12-31',5,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 5,12,3,price FROM public."Products" WHERE id = 12;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 5,17,5,price FROM public."Products" WHERE id = 17;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 5,15,1,price FROM public."Products" WHERE id = 15;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 5,20,2,price FROM public."Products" WHERE id = 20;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-03-12',5,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,9,1,price FROM public."Products" WHERE id = 9;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 6,13,5,price FROM public."Products" WHERE id = 13;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-10-01',1,'cancelled');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,18,5,price FROM public."Products" WHERE id = 18;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,7,3,price FROM public."Products" WHERE id = 7;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 7,15,1,price FROM public."Products" WHERE id = 15;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-08-28',5,'completed');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 8,13,5,price FROM public."Products" WHERE id = 13;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-02-03',2,'pending');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 9,16,4,price FROM public."Products" WHERE id = 16;
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 9,19,2,price FROM public."Products" WHERE id = 19;
INSERT INTO public."Orders"(date,customer_id,status)
VALUES('2022-07-12',3,'completed');
INSERT INTO public."Order Lines"(order_id,product_id,quantity,price)
SELECT 10,12,1,price FROM public."Products" WHERE id = 12;
