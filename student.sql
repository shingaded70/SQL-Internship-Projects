CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE marks (
    mark_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject TEXT,
    marks INTEGER
);

INSERT INTO students VALUES (1,'Amit'),(2,'Riya'),(3,'Rahul');

INSERT INTO marks VALUES
(1,1,'Math',85),
(2,1,'Science',90),
(3,2,'Math',70),
(4,2,'Science',75),
(5,3,'Math',95),
(6,3,'Science',88);

SELECT s.name, AVG(m.marks)
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;
