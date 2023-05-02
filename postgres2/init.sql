CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(20),
  hire_date DATE NOT NULL,
  salary DECIMAL(10,2) NOT NULL
);

CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  manager_id INTEGER NOT NULL,
  FOREIGN KEY (manager_id) REFERENCES employees(id)
);

CREATE TABLE employee_department (
  employee_id INTEGER NOT NULL,
  department_id INTEGER NOT NULL,
  PRIMARY KEY (employee_id, department_id),
  FOREIGN KEY (employee_id) REFERENCES employees(id),
  FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO employees (first_name, last_name, email, phone, hire_date, salary)
VALUES ('John', 'Doe', 'john.doe@example.com', '+1-202-555-0111', '2020-01-01', 50000.00),
       ('Jane', 'Doe', 'jane.doe@example.com', '+1-202-555-0222', '2021-05-01', 60000.00),
       ('Bob', 'Smith', 'bob.smith@example.com', '+1-202-555-0333', '2019-10-01', 55000.00),
       ('Alice', 'Johnson', 'alice.johnson@example.com', '+1-202-555-0444', '2022-01-01', 65000.00);

INSERT INTO departments (name, manager_id)
VALUES ('Sales', 1),
       ('Marketing', 2),
       ('Finance', 4);

INSERT INTO employee_department (employee_id, department_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 3),
       (1, 3),
       (2, 3);
