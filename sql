cod



step one 

DLL
CREATE TABLE `countries` (
  `code` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `conti_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




CREATE TABLE `order_products` (
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



CREATE TABLE `orders` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `statu` varchar(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





CREATE TABLE `products` (
  `id` int DEFAULT NULL,
  `name` varchar(10) not NULL,
  `price` int DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



CREATE TABLE `user` (
  `id` int DEFAULT NULL,
  `full_name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `country_cod` int DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci









***step 2

USE store ;
ALTER TABLE  order_products
ADD FOREIGN KEY (product_id) REFERENCES products (id);




****step 3

 1-
USE store;
ALTER TABLE  countries
add constraint unique (name);

2-

USE store;
ALTER TABLE  user
add constraint unique (email);

3-






4-
USE store;
INSERT INTO order_products (quantity)
value (0);
SELECT * FROM order_products ;



5-
USE store;
INSERT INTO products (price)
value (0);
SELECT * FROM products ;





**********step 4

USE store;
INSERT INTO products 
value (2,"bash",25,"no","2011");
SELECT * FROM products ;



USE store;
INSERT INTO order_products 
value (2,3,25);
SELECT * FROM order_products ;


USE store;
INSERT INTO orders
value (44,34,"no",44);
SELECT * FROM orders ;







USE store;
INSERT INTO users
value (66,"Bshayer","bash@hotmail.com","female" ,
"29-31993",9,"099");
SELECT * FROM users ;


USE store;
INSERT INTO contries
value ("8","Bshayer","bash"
);
SELECT * FROM contries ;


USE store;
UPDATE contries
SET name =bshyer 
WHERE name 
SELECT * FROM contries ;



USE store;
DELETE FROM products WHERE id=2 ;
SELECT * FROM products ;




