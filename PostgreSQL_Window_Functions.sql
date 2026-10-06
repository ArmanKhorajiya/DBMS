-- PostgreSQL Window Functions
-- CodingGita Semester 3 DBMS
-- DROP TABLE IF EXISTS students;

-- CREATE TABLE students (
--     student_id SERIAL PRIMARY KEY,
--     student_name VARCHAR(50),
--     course VARCHAR(50),
--     marks INT
-- );

-- INSERT INTO students (student_name, course, marks)
-- VALUES
-- -- Python
-- ('Motu', 'Python', 85),
-- ('Patlu', 'Python', 72),
-- ('Anjali', 'Python', 95),
-- ('Priya', 'Python', 85),
-- ('Karan', 'Python', 72),

-- -- MERN
-- ('Raju', 'MERN', 90),
-- ('Shyam', 'MERN', 65),
-- ('Ravi', 'MERN', 78),
-- ('Rahul', 'MERN', 90),
-- ('Vikas', 'MERN', 65),

-- -- Java
-- ('Neha', 'Java', 88),
-- ('Amit', 'Java', 75),
-- ('Pooja', 'Java', 88),
-- ('Jay', 'Java', 70),
-- ('Kunal', 'Java', 75);

-- SELECT * FROM students;

-- Syntax:
-- function() OVER (
--     PARTITION BY column
--     ORDER BY column
-- )

-- SELECT
--     student_name,
--     course,
--     marks,
--     AVG(marks) OVER() AS average_marks
-- FROM students;

-- SELECT
--     student_name,
--     course,
--     marks,
--     AVG(marks) OVER(
--         PARTITION BY course
--     ) AS course_average
-- FROM students;

-- SELECT
--     student_name,
--     marks,
--     ROW_NUMBER() OVER(
--         ORDER BY marks DESC
--     ) AS row_number
-- FROM students;

-- SELECT
--     student_name,
--     marks,
--     rank() OVER(
--         ORDER BY marks DESC
--     ) AS rank
-- FROM students;

-- SELECT
--     student_name,
--     marks,
--     dense_rank() OVER(
--         ORDER BY marks DESC
--     ) AS rank
-- FROM students;

