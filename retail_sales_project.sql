-- =============================================================================================================================================================
-- RETAIL SALES SQL PROJECT
-- Author: P Shareef
-- =============================================================================================================================================================

-- 1. Create Database
CREATE DATABASE ecommerce;

-- 2. Use Database
USE ecommerce;

-- 3. Create Tables

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 4. Insert Data
-- Insert Data into customers table

INSERT INTO customers (customer_id, name, email, region, join_date) VALUES
(1, 'Rahul', 'rahul@gmail.com', 'Hyderabad', '2025-02-19'),
(2, 'Lataha', 'latha@gmail.com', 'Chennai', '2025-07-25'),
(3, 'Ravan', 'ravan@gmail.com', 'Hyderabad', '2025-02-23'),
(4, 'Sekhar', 'sekhar@gmail.com', 'Vizag', '2025-02-20'),
(5, 'Veena', 'veena@gmail.com', 'Delhi', '2025-05-19'),
(6, 'Ramu', 'ramu@gmail.com', 'Hyderabad', '2025-01-09'),
(7, 'Sanvy', 'sanvy@gmail.com', 'Bengaluru', '2025-05-11'),
(8, 'Gowtham', 'gowtham@gmail.com', 'Chennai', '2025-04-17'),
(9, 'Samuel', 'samuel@gmail.com', 'Mumbai', '2025-02-27'),
(10, 'Sakshi', 'sakshi@gmail.com', 'Hyderabad', '2025-01-22'),
(11, 'Priya', 'priya@gmail.com', 'Delhi', '2025-04-21'),
(12, 'Sultana', 'sultana@gmail.com', 'Delhi', '2025-01-02'),
(13, 'Viraj', 'viraj@gmail.com', 'Vizag', '2025-05-19'),
(14, 'Vijay', 'vijay@gmail.com', 'Vizag', '2025-04-19'),
(15, 'Kiran', 'kiran@gmail.com', 'Bengaluru', '2025-02-18'),
(16, 'Shareef', 'shareef@gmail.com', 'Hyderabad', '2025-02-25'),
(17, 'Sami', 'sami@gmail.com', 'Mumbai', '2025-03-22'),
(18, 'Senthil', 'senthil@gmail.com', 'Chennai', '2025-02-13'),
(19, 'Ravi', 'ravi@gmail.com', 'Hyderabad', '2025-03-11'),
(20, 'Somu', 'somu@gmail.com', 'Bengaluru', '2025-03-20'),
(21, 'Samrat', 'samrat@gmail.com', 'Mumbai', '2025-05-30');
Insert Data into products table

INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Heater', 'Electronics', 500),
(102, 'Refridgerator', 'Electronics', 15000),
(103, 'Rolex Watch', 'Accessories', 4000),
(104, 'Shoes', 'Accessories', 1000),
(105, 'Kurtha', 'Clothing', 1000),
(106, 'Shirt', 'Clothing', 2000),
(107, 'Geaser', 'Electronics', 5000),
(108, 'Glasses', 'Accessories', 500),
(109, 'Cool-Glasses', 'Accessories', 500),
(110, 'Air-Conditioner', 'Electronics', 17000),
(111, 'Jeans-Pant', 'Clothing', 600),
(112, 'Ceiling-Fan', 'Electronics', 1400),
(113, 'Bracelet', 'Accessories', 300),
(114, 'Washing Machine', 'Electronics', 20000),
(115, 'Wet Grinder', 'Electronics', 3000),
(116, 'Suit', 'Clothing', 3000),
(117, 'Shorts', 'Clothing', 300);
--INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1,1,'2026-01-05'),
(2,1,'2026-01-18'),
(3,2,'2026-01-12'),
(4,2,'2026-02-03'),
(5,3,'2026-01-25'),
(6,3,'2026-02-14'),
(7,4,'2026-01-09'),
(8,4,'2026-02-20'),
(9,5,'2026-01-30'),
(10,5,'2026-03-02'),
(11,6,'2026-01-11'),
(12,6,'2026-02-18'),
(13,7,'2026-01-22'),
(14,7,'2026-03-10'),
(15,8,'2026-02-01'),
(16,8,'2026-03-05'),
(17,9,'2026-02-07'),
(18,9,'2026-03-14'),
(19,10,'2026-02-11'),
(20,10,'2026-03-18'),
(21,11,'2026-01-15'),
(22,12,'2026-02-09'),
(23,13,'2026-02-16'),
(24,14,'2026-01-27'),
(25,15,'2026-03-01'),
(26,16,'2026-02-25'),
(27,17,'2026-01-29'),
(28,18,'2026-03-07'),
(29,19,'2026-02-28'),
(30,20,'2026-03-12'),
(31,1,'2026-03-20'),
(32,2,'2026-03-22'),
(33,3,'2026-03-25'),
(34,4,'2026-03-26'),
(35,5,'2026-03-27'),
(36,6,'2026-03-28'),
(37,7,'2026-03-29'),
(38,8,'2026-03-30'),
(39,9,'2026-03-31'),
(40,10,'2026-03-15'),
(41,11,'2026-03-08'),
(42,12,'2026-03-09'),
(43,13,'2026-03-11'),
(44,14,'2026-03-13'),
(45,15,'2026-03-16');
-- INSERT INTO order_items (order_item_id, order_id, product_id, qty, price_per_unit) VALUES
(1, 1, 102, 2, 500.00),
(2, 1, 105, 1, 1200.00),

(3, 2, 103, 1, 750.00),

(4, 3, 101, 3, 300.00),
(5, 3, 104, 2, 900.00),

(6, 4, 106, 1, 1500.00),

(7, 5, 107, 2, 400.00),
(8, 5, 108, 1, 250.00),

(9, 6, 109, 2, 800.00),

(10, 7, 102, 1, 500.00),
(11, 7, 110, 1, 2000.00),

(12, 8, 111, 1, 650.00),

(13, 9, 112, 3, 350.00),

(14, 10, 113, 2, 1100.00),

(15, 11, 103, 2, 750.00),

(16, 12, 114, 1, 1800.00),

(17, 13, 115, 2, 950.00),

(18, 14, 116, 1, 1300.00),

(19, 15, 117, 2, 600.00);

-- 5. Business Analysis Queries

-- Total Revenue
   select sum(p.price*o.qty) as total_revenue from products p join order_items o on p.product_id=o.product_id;
-- Most Sold Product
  select p.product_name,count(o.qty) as most_sold_product from products p join order_items o on p.product_id=o.product_id 
group by p.product_name order by count(o.qty) desc ;
--Total Orders Placed
  select count(order_id) as total_orders_placed from orders;
 --Total Revenue by Category
   select p.category,sum(p.price * o.qty) as  total_revenue from products p join order_items o on p.product_id=o.product_id
  group by p.category order by total_revenue  desc;
  select c.customer_id ,c.name,sum(p.price*r.qty) as total_spent from customers c  join orders o on c.customer_id=o.customer_id
 join order_items r on r.order_id=o.order_id join products p on p.product_id=r.product_id group by c.customer_id order by total_spent desc;
--Average Order value
   select avg(total_spent) from(select o.order_id,sum(p.price*r.qty) as total_spent from order_items r join orders o on r.order_id=o.order_id 
 join products p on r.product_id=p.product_id group by o.order_id)as temp;
--Monthly Revenue Trend
   select month(o.order_date) as month,sum(p.price*r.qty) as total_revenue from order_items r 
   join orders o on r.order_id=o.order_id join products p on r.product_id=p.product_id group by month;
--Region-wise Revenue
   select c.Region, sum(p.price*r.qty) as total_revenue from customers c 
   join orders o on c.customer_id=o.customer_id join order_items r on r.order_id=o.order_id join products p on p.product_id=r.product_id group by c.Region;
--Low Performing Products
    select p.product_name , count(r.qty) as total_units_sold from products p 
	join order_items r on r.product_id=p.product_id group by p.product_name having total_units_sold<3;
--Customers With Only One Ordee
    select c.name,count(o.order_id) as total_orders from orders o join customers c on c.customer_id=o.customer_id group by c.name having total_orders=1;
--Highest Single Order Value
   select o.order_id, sum(p.price*r.qty) as total_revenue from orders o join order_items r on o.order_id=r.order_id
   join products p on p.product_id=r.product_id group by o.order_id order by total_revenue desc limit 1;
 --Repeat vs New Customer Analysis
   SELECT 
    customer_type,
    count(*) AS number_of_customers from (select customer_id,
        case
            when count(order_id) = 1 then 'One-Time'
            else'Repeat'
        end as customer_type
    from orders group by customer_id
) as customer_analysis
group by customer_type;
--Top Selling Product(By Quantity)
    select p.product_name,count(r.qty) as total_orders from order_items r 
	join products p on p.product_id=r.product_id group by p.product_name order by total_orders desc limit 1;
--Revenue Contribution
 SELECT 
    p.product_name,
    SUM(oi.qty * p.price) AS product_revenue,
    ROUND(
        (SUM(oi.qty * p.price) / 
        (SELECT SUM(oi2.qty * p2.price)
         FROM order_items oi2
         JOIN products p2 ON oi2.product_id = p2.product_id)
        ) * 100, 2
    ) AS revenue_percentage
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue_percentage DESC; 