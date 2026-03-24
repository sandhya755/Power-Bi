CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Create product table
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2));

-- Insert sample data
INSERT INTO product VALUES
(1,'Laptop','Electronics',80000),
(2,'Mobile','Electronics',65000),
(3,'Chair','Furniture',5000),
(4,'TV','Electronics',55000),
(5,'Table','Furniture',60000);

-- Retrieve products in Electronics category
-- OR products with price less than 70000

SELECT * FROM product WHERE category = 'Electronics' OR price < 70000;