CREATE DATABASE OnlineBookstore

CREATE TABLE books(
book_id INT PRIMARY KEY,
title VARCHAR(20),
author_id INT,
price DECIMAL(10,2),
publication_year INT
);

CREATE TABLE authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(20),
country VARCHAR(20)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
book_id INT,
customer_name VARCHAR(20),
order_date DATE,
);

INSERT INTO books
VALUES (101,'Maths',1001,250.00,1995)
INSERT INTO books
VALUES (102,'History',1002,250.00,1990)
INSERT INTO books
VALUES (103,'Computer',1003,250.00,2000)
INSERT INTO books
VALUES (104,'Biology',1004,250.00,1985)
INSERT INTO books
VALUES (105,'Physics',1005,250.00,2020)

INSERT INTO authors
VALUES (1001,'Joe','US')
INSERT INTO authors
VALUES (1002,'John','UK')
INSERT INTO authors
VALUES (1003,'Michael','US')
INSERT INTO authors
VALUES (1004,'Smith','India')
INSERT INTO authors
VALUES (1005,'Adam','Germany')

INSERT INTO orders
VALUES (201,101,'Jeena','2023-11-08')
INSERT INTO orders
VALUES (202,102,'Aadya','2022-04-06')
INSERT INTO orders
VALUES (203,103,'Ratheesh','2022-12-25')
INSERT INTO orders
VALUES (204,104,'Aaron','2023-09-11')
INSERT INTO orders
VALUES (205,105,'Johan','2022-08-14')

SELECT * FROM books
SELECT * FROM authors
SELECT * FROM orders

ALTER TABLE books
ADD COLUMN genre VARCHAR(20);
SELECT * FROM books

ALTER TABLE orders
ADD COLUMN quantity INT;
SELECT * FROM orders

SELECT books.*, authors.author_name
FROM books
JOIN authors ON books.author_id = authors.author_id;

SELECT orders.*, books.title, orders.customer_name
FROM orders
JOIN books ON orders.book_id = books.book_id;


