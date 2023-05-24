-- Comments in SQL Start with dash-dash --
-- insert chair --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
-- insert stool --
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
-- insert table -- 
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);
-- select all rows and columns --
SELECT * from products
-- insert new, made up product --
INSERT INTO products (name, price, can_be_returned) VALUES ('computer', 2000.99, true);
-- show can be returned --
SELECT * from products WHERE can_be_returned;
-- display prodcuts with price less than 44.00 --
SELECT * from products WHERE price < 44.00;
-- products with price between 22.50 and 99.99 --
SELECT * from products WHERE price > 22.50 and price < 99.99;
-- subtract 20 from price for all products --
UPDATE products SET price = price - 20;
-- remove all products with price less than 25 --
DELETE FROM products WHERE price < 25;
-- increase price by 20 --
UPDATE products SET price = price + 20;
--set all products are reuturnable --
UPDATE products SET can_be_returned = true;