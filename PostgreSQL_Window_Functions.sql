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

-- SELECT
--     student_name,
--     marks,
--     LAG(marks) OVER(
--         ORDER BY student_id
--     ) AS previous_marks
-- FROM students;

-- SELECT
--     student_name,
--     marks,
--     LEAD(marks) OVER(
--         ORDER BY student_id
--     ) AS next_marks
-- FROM students;

-- Q1:
-- Display every student's name, marks, and overall average marks.
-- select 
-- student_name,marks,avg(marks) over() as average
-- from students

-- Q2:
-- Display every student with a row number based on marks from highest to lowest
-- select
-- student_name,
-- marks,
-- row_number() over(
--     order by marks desc
-- ) as row_number
-- from students

-- Q3:
-- Display every student along with the average marks of their course.
-- select 
-- student_name,
-- course,
-- marks,
-- avg(marks) over()
-- from students

-- Q4:
-- Display every student with their rank based on marks from highest to lowest.
-- select
-- student_name,
-- course,
-- marks,
-- rank() over(
--     order by marks desc
-- )
-- from students

-- Q5:
-- Display each student's marks along with the marks of the previous student based on student_id.
-- select
-- student_name,
-- marks,
-- lag(marks) over() as previous_marks
-- from students

-- Q6:
-- Rank students separately inside each course based on marks from highest to lowest.
SELECT
    student_name,
    course,
    marks,
    sum(marks) OVER(
        PARTITION BY course
    ) AS course_average
FROM students;