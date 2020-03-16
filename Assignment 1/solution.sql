-- CREATE DATABASE test;
-- show databases;

use test;

-- DROP TABLE retailer;

CREATE TABLE retailer(
   Retailer_ID INTEGER  NOT NULL PRIMARY KEY,
   Retailer_Name VARCHAR(6),
   City        VARCHAR(9),
   Mail        VARCHAR(15),
   Contact     NUMERIC(10,0)
   CHECK (Mail like '%_@__%.__%')
);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (1,'lkea','Mumbai','abc@gmail.com',9874562478);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (2,'ram','Delhi','xyz@gmail.com',9765841254);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (3,'ramesh','Lucknow','user@gmail.com',9678495234);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (4,'yash','Bangalore','user1@gmail.com',9763258415);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (5,'abhay','Delhi','user2@gmail.com',9564875962);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (6,'dhyey','Ahemdabad','user3@gmail.com',9784568741);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (7,'smit','Pune','user4@gmail.com',9687549785);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (8,'jenik','Gurgaon','user5@gmail.com',9634875614);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (9,'kartik','Mumbai','user6@gmail.com',9687549865);

INSERT INTO retailer(Retailer_ID,Retailer_Name,City,Mail,Contact) 
VALUES (10,'harish','Delhi','user7@gmail.com',9658742658);

-- select * from retailer;

-- DROP TABLE products;

CREATE TABLE products(
   Product_ID          INTEGER  NOT NULL PRIMARY KEY 
  ,Product_Type        VARCHAR(11)
  ,Retailer_Name       VARCHAR(6)
  ,Quantity_left       INTEGER 
  ,Date_when_added     DATE 
  ,Price               INTEGER 
  ,Product_Description VARCHAR(4)
  ,Product_Name        VARCHAR(20)
  ,CHECK (Product_Type in ('Book','Electronics','Furniture'))
);


INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (101,'Book','lkea',10,'2018-03-02',5200,NULL,'The Lost Symbol');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (102,'Book','ram',12,'2020-02-06',1500,NULL,'Harry Porter');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (103,'Book','ram',5,'2019-09-19',3050,NULL,'The Book Thief');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (104,'Book','ramesh',15,'2016-07-18',7500,NULL,'The Ends of World');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (105,'Book','abhay',34,'2020-02-03',500,NULL,'Living with a Seal');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (51,'Electronics','lkea',15,'2017-03-24',61000,NULL,'Dell Inspiron Laptop');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (107,'Electronics','lkea',2,'2020-01-01',29000,NULL,'Oracle Smartphone');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (108,'Electronics','yash',12,'2018-03-02',52000,NULL,'HP Pavilion Laptop');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (109,'Electronics','ramesh',50,'2018-08-04',16000,NULL,'Vivo Z1 Pro');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (110,'Electronics','abhay',14,'2019-06-30',90000,NULL,'Apple Macbook Air');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (111,'Furniture','yash',16,'2020-02-01',120000,NULL,'Sofa');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (112,'Furniture','ram',18,'2019-12-31',10000,NULL,'Armchair');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (113,'Furniture','ramesh',16,'2019-04-01',28000,NULL,'Bed');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (114,'Furniture','lkea',24,'2018-11-09',15600,NULL,'Cradle');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (115,'Furniture','abhay',1,'2019-10-01',14500,NULL,'Table');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (116,'Book','abhay',5,'2018-11-05',1200,NULL,'Start Again');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (117,'Book','ram',4,'2005-02-01',5412,NULL,'Lost in Battle');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (118,'Book','ramesh',6,'2016-08-04',2450,NULL,'Perfect Fake');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (119,'Book','ram',15,'2018-03-05',1456,NULL,'Elegantly Wasted');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (120,'Book','yash',25,'2017-09-16',1987,NULL,'Hate Burns');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (121,'Electronics','abhay',15,'2019-06-30',2000,NULL,'Redmi Note 7');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (122,'Electronics','ram',14,'2020-02-01',5000,NULL,'Asus Predator');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (123,'Electronics','ramesh',12,'2019-12-31',20000,NULL,'Asus Laptop');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (124,'Electronics','ram',9,'2019-04-01',54000,NULL,'HP Omen Laptop');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (125,'Electronics','yash',11,'2018-11-09',24300,NULL,'Motorola Z5');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (126,'Furniture','abhay',17,'2018-11-05',1000,NULL,'Cabinet');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (127,'Furniture','ram',16,'2005-02-01',2000,NULL,'Game Table');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (128,'Furniture','ramesh',18,'2016-08-04',3000,NULL,'Deck Chair');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (129,'Furniture','ram',15,'2018-03-05',4500,NULL,'Hall Tree');

INSERT INTO products(Product_ID,Product_Type,Retailer_Name,Quantity_left,Date_when_added,Price,Product_Description,Product_Name) 
VALUES (130,'Furniture','yash',20,'2017-09-16',6500,NULL,'Big Bed');

-- select * from products;

-- DROP TABLE registered_users;

CREATE TABLE registered_users(
   User_I  INTEGER  NOT NULL PRIMARY KEY,
   Cust_Name     VARCHAR(15),
   Mail_ID  VARCHAR(25),
   Pass VARCHAR(10),
   Reg_Date DATE 
   CHECK (Mail_ID like '%_@__%.__%')
);
INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (101,'Harshil','cust@gmail.com','abcde','2001-02-01');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (967,'Sam','cust2@gmail.com','fghij','2008-08-06');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (51,'Rakesh','cust3@gmail.com','klmno','2019-06-08');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (384,'Nikunj','cust4@gmail.com','pqrst','2014-06-04');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (687,'Komal','cust5@gmail.com','uvwxy','2017-11-15');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (55,'Raman','cust6@gmail.com','kuhjy','2015-06-07');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (987,'Kaushal','cust7@gmail.com','kuhjy','2014-03-08');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (657,'Abhay','cust8@gmail.com','kuhjy','2019-11-15');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (365,'Rohit','cust9@gmail.com','kuhjy','2016-06-14');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (489,'Kartik','cust10@gmail.com','kuhjy','2018-04-17');

INSERT INTO registered_users(User_I,Cust_Name,Mail_ID,Pass,Reg_Date) 
VALUES (487,'Sangeeta','cust11@gmail.com','kiujhy','2019-04-18');

-- select * from registered_users

-- DROP TABLE product_books;

CREATE TABLE product_books(
   Book_Name     VARCHAR(18) NOT NULL PRIMARY KEY
  ,Product_ID    INTEGER NOT NULL 
  ,Year_Published INTEGER NOT NULL 
  ,Author         VARCHAR(25) NOT NULL
  ,FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
  ,CHECK (Year_Published between 2001 and 2050)
);

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('The Lost Symbol',101,1993,'Charles Dickens');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Harry Porter',102,2010,'Stephen King');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('The Book Thief',103,2005,'Franz Kafka');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('The Ends of World',104,2009,'Jane Austen');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Living with a Seal',105,1999,'Leo Tolstoy');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Start Again',116,1998,'James Joyce');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Lost in Battle',117,2007,'Mark Twain');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Perfectly Fake',118,2000,'William Shakespeare');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Elegently Wasted',119,1978,'George Eliot');

INSERT INTO product_books(Book_Name,Product_ID,Year_Published,Author) 
VALUES ('Hate Burns',120,1999,'Philip Roth');

-- select * from product_books;

-- DROP TABLE product_elec;

CREATE TABLE product_elec(
   Product_ID INTEGER  NOT NULL PRIMARY KEY 
  ,Product_Name       VARCHAR(20)
  ,Category   VARCHAR(10)
  ,FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
);

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (51,'Dell Inspiron Laptop','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (107,'Oracle Smartphone','Smartphone');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (108,'HP Pavilion Laptop','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (109,'Vivo Z1 Pro','Smartphone');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (110,'Apple Macbook Air','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (121,'Redmi Note 7','Smartphone');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (122,'Asus Predator','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (123,'Asus Laptop','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (124,'HP Omen Laptop','Laptop');

INSERT INTO product_elec(Product_ID,Product_Name,Category) 
VALUES (125,'Motorola Z5','Smartphone');

-- select * from product_elec

-- DROP TABLE product_furn;

CREATE TABLE product_furn(
   Product_ID   INTEGER  NOT NULL PRIMARY KEY 
  ,Product_Name VARCHAR(25)
  ,FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
);


INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (111,'Sofa');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (112,'Armchair');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (113,'Bed');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (114,'Cradle');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (115,'Table');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (126,'Cabinet');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (127,'Game Table');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (128,'Deck Chair');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (129,'Hall Tree');

INSERT INTO product_furn(Product_ID,Product_Name) 
VALUES (130,'Big Bed');

-- -- select * from product_furn

-- -- DROP TABLE cart;

CREATE TABLE cart(
   Ind INTEGER  NOT NULL PRIMARY KEY,
   User_I    INTEGER,
   Product_ID INTEGER,
   Quantity INTEGER,
   FOREIGN KEY (User_I) REFERENCES registered_users(User_I),
   FOREIGN kEY (Product_ID) REFERENCES products(Product_ID)
);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (1,101,112,2);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (2,967,51,5);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (3,51,105,1);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (4,384,114,1);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (5,687,110,6);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (6,967,107,4);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (7,101,104,5);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (8,687,112,9);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (9,384,51,11);

INSERT INTO cart(Ind,User_I,Product_ID,Quantity) 
VALUES (10,51,105,15);

-- select * from cart

-- DROP TABLE past_orders;

CREATE TABLE past_orders(
   Ind        INTEGER  NOT NULL PRIMARY KEY 
  ,Order_ID     INTEGER 
  ,User_I      INTEGER 
  ,Product_ID   INTEGER 
  ,Total_Amount INTEGER 
  ,Rating       INTEGER 
  ,Review       VARCHAR(4)
  ,Purchase_Date DATE
  ,Quantity INTEGER
  ,Views INTEGER
  ,FOREIGN KEY (User_I) REFERENCES registered_users(User_I)
  ,FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (1,1000,101,51,61000,1,NULL,'2019-02-01',1,10);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (2,1001,687,107,25000,4,NULL,'2018-08-06',2,12);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views)
VALUES (3,1005,51,114,4600,5,NULL,'2017-06-04',5,5);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (4,1004,384,103,3000,3,NULL,'2001-07-15',4,9);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (5,1002,967,115,14500,2,NULL,'2018-06-19',3,14);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views)
VALUES (6,1000,101,108,51000,4,NULL,'2017-06-24',5,13);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (7,1009,101,107,29000,5,NULL,'2016-06-19',4,19);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views) 
VALUES (8,1010,55,104,7500,5,NULL,'2014-05-26',2,3);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views)
VALUES (9,1015,55,107,25000,5,NULL,'2017-05-26',1,8);

INSERT INTO past_orders(Ind,Order_ID,User_I,Product_ID,Total_Amount,Rating,Review,Purchase_Date,Quantity,Views)
VALUES (10,1016,384,114,4600,3,NULL,'2010-07-15',1,7);

-- select * from past_orders

-- DROP TABLE delivery;

CREATE TABLE delivery(
   Ind   INTEGER  NOT NULL PRIMARY KEY 
  ,User_I INTEGER  NOT NULL
  ,Delivery_Address VARCHAR(25) NOT NULL
  ,City    VARCHAR(25) NOT NULL
  ,FOREIGN KEY (User_I) REFERENCES registered_users(User_I)
);

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (1,101,'bcgvc','Mumbai');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (2,384,'cjhb','Delhi');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (3,51,'behbeh','Kolkata');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (4,967,'cjfbhf','Chennai');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (5,687,'cecneun','Mumbai');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (6,55,'jirbbfkb','Mumbai');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (7,987,' ehfbdjsd','Delhi');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (8,657,'vhbvhrbh','Kolkata');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (9,365,'ndjfhsb','Chennai');

INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
VALUES (10,489,'hvrbhjf','Mumbai');

--  select * from delivery

-- DROP TABLE search_history;

CREATE TABLE search_history(
   Ind      INTEGER  NOT NULL PRIMARY KEY 
  ,User_I    INTEGER  NOT NULL
  ,Product_ID INTEGER  NOT NULL
  ,Time_stamp  DATE  NOT NULL
  ,FOREIGN KEY (User_I) REFERENCES registered_users(User_I)
  ,FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)

);
INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (1,101,126,'2019-04-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (2,967,107,'2018-06-09');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (3,487,115,'2018-05-19');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (4,384,118,'2017-06-05');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (5,687,122,'2014-07-19');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (6,967,118,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (7,101,119,'2019-12-31');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (8,687,124,'2019-11-20');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (9,384,127,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (10,101,130,'2020-01-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (11,967,130,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (12,51,130,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (13,384,130,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (14,687,130,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (15,55,130,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (16,987,130,'2020-01-28');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (17,657,130,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (18,365,130,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (19,489,130,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (20,101,51,'2019-01-31');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (21,101,108,'2017-06-20');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (22,101,107,'2016-06-17');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (23,101,118,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (24,101,120,'2020-01-28');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (25,101,121,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (26,101,122,'2020-01-15');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (27,101,123,'2020-02-01');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (28,101,124,'2019-01-31');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (29,101,125,'2017-06-20');

INSERT INTO search_history(Ind,User_I,Product_ID,Time_stamp) 
VALUES (30,101,127,'2016-06-17');

-- select * from search_history

-- Q2

-- update registered_users 
-- set Cust_Name = 'Anonymous',Mail_ID = NULL,Pass = NULL
-- where User_I = 384;

-- update past_orders
-- set Rating = NULL,Review = NULL
-- where User_I = 384;

-- delete from cart
-- where User_I = 384;

-- delete from delivery
-- where User_I = 384;

-- delete from search_history
-- where User_I = 384;

-- select * from registered_users

-- Q3

-- update products
-- set Price = 0.9*Price
-- where Product_ID in
-- (select Product_ID from 
-- (select T.Product_Id, views, Price from 
-- (select Product_ID, count(*) as views from search_history group by Product_ID) as T 
-- join products on T.Product_ID = products.Product_ID) as R
-- where R.views<10 and R.Price>5000);

-- select * from products

-- Q4

-- INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
-- VALUES (11,101,'chdbfuyebfy','Lucknow');

-- INSERT INTO delivery(Ind,User_I,Delivery_Address,City) 
-- VALUES (12,101,'yrbvgbrfubf','Ahemdabad');

-- select * from delivery

-- Q5

-- select Retailer_Name,Mail from retailer
-- where City = 'Delhi'

-- Q6

-- select DISTINCT Mail_ID,T.User_I,R.Cust_Name from (select User_I,SUM(Total_Amount) as Total from past_orders
-- group by User_I having Total>=5000) as T join (select User_I,Mail_ID,City,Cust_Name from registered_users natural join delivery) as R on T.User_I = R.User_I
-- where City = 'Mumbai'

-- Q7

-- select Product_Name from products 
-- where Product_Name like '%le%'

-- Q8

-- select User_I,T.Product_ID,Order_ID,Purchase_Date, Product_Name from (select User_I,Product_ID,Order_ID,Purchase_Date from past_orders
-- where User_I = (select User_I from registered_users order by Reg_Date LIMIT 1)) as T join products on T.Product_ID = products.Product_ID

-- Q9

-- select User_I,T.Product_ID,Product_Name from (select User_I,Product_ID from cart
-- where User_I = (select User_I from registered_users order by Reg_Date LIMIT 1 OFFSET 1)) as T join products on T.Product_ID = products.Product_ID

-- Q10

-- select Book_Name
-- from product_books
-- where Year_Published > 2001

-- Q11

-- select Product_Type,Product_Name,Price from products 
-- where Price between 10000 and 20000 and Product_Type = 'Electronics';

-- Q12

-- select Product_ID,Product_Name from products
-- where Retailer_Name = 'lkea' and Product_Type = 'Furniture'

-- Q13

-- select T.Product_ID, T.Product_Name, Category, Price from (select Product_ID,Product_Name,Category from product_elec where Category = 'Laptop') as T 
-- join products on T.Product_ID = products.Product_ID
-- order by Price

-- Q14

-- select Product_Name from products where Date_when_added > '2019-07-27'

-- Q15

-- select Book_Name from product_books
-- where Author='Franz Kafka'

-- Q16

-- select User_I,Mail_ID from cart natural join registered_users
-- where Quantity < 3

-- Q17

-- Interpretation 1: Ordering by the quantity of each of the products within a specific Order_ID

-- select Order_ID, sum(Quantity) as quantity from past_orders group by Order_ID
-- order by quantity desc LIMIT 1

-- Interpretation 2: Ordering by the total unique number of products within a specific Order_ID

-- select Order_ID, COUNT(*) as total_no_of_products from past_orders group by Order_ID
-- order by total_no_of_products desc LIMIT 1

-- Q18

-- select Product_Name from products where Date_when_added > '2020-01-30'

-- Q19

-- select Retailer_ID from products natural join past_orders natural join retailer
-- where User_I = 55

-- Q20

-- CREATE TABLE Diwali_Deals
-- select * from products;

-- update Diwali_Deals
-- set Price = 0.95 * Price
-- where Date_when_added > '2019-12-08';

-- select * from Diwali_Deals

-- Q21

-- create table dummy1
-- (
-- select T.User_I,T.Product_ID,4*count(*) as Views from (select User_I,Product_ID from search_history 
-- having User_I = 101) as T group by Product_ID);

-- create table dummy2
-- (
-- select User_I,Product_ID,Views from past_orders
-- where User_I = 101);

-- update dummy1
-- set Views = Views+10
-- where Product_ID = 51;

-- update dummy1
-- set Views = Views+13
-- where Product_ID = 108;

-- update dummy1
-- set Views = Views+19
-- where Product_ID = 107;

-- select Product_Name,Product_ID from dummy1 natural join products
-- order by Views desc
-- limit 10;