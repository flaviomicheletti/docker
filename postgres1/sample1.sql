--
-- OnlineStoreDB
--

-- This table contains customer information.
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(100)
);

-- This table contains order information.
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  order_date DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- This table contains information about the items ordered in each order.
CREATE TABLE order_items (
  id SERIAL PRIMARY KEY,
  order_id INTEGER NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  quantity INTEGER NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id)
);

-- This table contains information about products available for purchase.
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL
);

--
-- data
--
INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES ('John', 'Doe', 'john.doe@example.com', '+1-202-555-0111', '123 Main St'),
       ('Jane', 'Doe', 'jane.doe@example.com', '+1-202-555-0222', '456 Maple Ave');

INSERT INTO orders (customer_id, order_date, total)
VALUES (1, '2022-04-30', 100.00),
       (2, '2022-05-01', 75.00);

INSERT INTO order_items (order_id, product_name, quantity, price)
VALUES (1, 'Widget', 2, 50.00),
       (1, 'Gizmo', 1, 50.00),
       (2, 'Widget', 1, 50.00),
       (2, 'Thingamajig', 2, 12.50);

INSERT INTO products (name, description, price)
VALUES ('Widget', 'A high-quality widget', 50.00),
       ('Gizmo', 'The latest and greatest gizmo', 50.00),
       ('Thingamajig', 'You won''t believe what this thing can do', 12.50);