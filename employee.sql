CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    department TEXT,
    salary REAL,
    join_date TEXT
);

INSERT INTO employees VALUES
(1,'Amit','HR',30000,'2023-01-10'),
(2,'Riya','IT',50000,'2022-06-15'),
(3,'Rahul','Finance',45000,'2021-03-20');

SELECT * FROM employees;
SELECT * FROM employees WHERE salary > 40000;
