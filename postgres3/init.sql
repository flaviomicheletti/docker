CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

INSERT INTO users (name, email, age) VALUES
('John', 'john@example.com', 25),
('Jane', 'jane@example.com', 30),
('Bob', 'bob@example.com', 40);
