-- Q1
-- select * from students 

-- Q2
-- select name from students 
-- where department='Computer Science'

-- Q3
--  select * from students
--  where city='Ahmedabad' 

-- Q4
-- select * from courses
-- where credits>3

-- Q5
-- select * from students
-- where admission_year=2024

-- Q6
-- select * from enrollments
-- where marks>70

-- Q7
-- select marks from enrollments
-- order by marks desc 
-- limit 1

-- Q8
-- select marks from enrollments
-- order by marks asc
-- limit 1

-- Q9
-- select avg(marks) as Average from enrollments

-- Q10
-- select count(student_id) as Total from students

-- Q11
-- select count(course_id) as Total from courses

-- Q12
-- select department,count(student_id) as Total from students
-- group by department

-- Q13
-- select course_id,avg(marks) as Average from enrollments
-- group by course_id

-- Q14
-- select course_id,count(student_id) as Total from enrollments
-- group by course_id

-- Q15
-- select * from enrollments
-- where marks between 60 and 80

-- Q16
-- select 
-- s.name,
-- c.course_name,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- join courses c
-- on c.course_id=e.course_id

-- Q17
-- select
-- s.name,
-- s.city,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- where e.marks>80

-- Q18
-- select
-- s.name,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- where marks<40

-- Q19
-- select
-- s.name,
-- count(e.course_id) as Course_Count
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- group by s.student_id,s.name
-- having count(e.course_id)>2

-- Q20
-- select
-- c.course_name,
-- count(e.student_id) as student_count
-- from courses c
-- join enrollments e
-- on c.course_id=e.course_id
-- group by c.course_id,c.course_name
-- having count(e.student_id)>3

-- Q21
-- select
-- c.course_name,
-- max(e.marks) as Highest_Marks
-- from courses c
-- join enrollments e
-- on c.course_id=e.course_id
-- group by c.course_name,c.course_id

-- Q22
-- select
-- c.course_name,
-- min(e.marks) as Lowest_Marks
-- from courses c
-- join enrollments e
-- on c.course_id=e.course_id
-- group by c.course_name,c.course_id

-- Q23
-- select student_id,avg(marks) from enrollments
-- group by student_id

-- Q24
-- select student_id,avg(marks) from enrollments
-- group by student_id
-- having avg(marks)>70

-- Q25
-- select student_id,marks,course_id from enrollments
-- where marks>80

-- Q26
-- select student_id,sum(marks) as Total from enrollments
-- group by student_id

-- Q27
-- select department, count(student_id) as Total from students
-- group by department
-- order by count(student_id) desc
-- limit 1

-- Q28
-- select course_id, count(enrollment_id) as Total from enrollments
-- group by course_id
-- order by Total desc
-- limit 1

-- Q29
-- select 
-- s.student_id,
-- s.name
-- from students s
-- left join enrollments e
-- on s.student_id=e.student_id
-- where e.student_id is null-- 

-- Q30
-- select
-- s.name,
-- c.course_name,
-- e.marks,
-- case
-- when e.marks>=40 then 'Pass'
-- else 'Fail'
-- end as result
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- join courses c
-- on c.course_id=e.course_id

-- Q31
-- select marks from enrollments
-- where marks < (
-- 	select max(marks) from enrollments
-- )
-- limit 1

-- Q32
-- select 
-- s.name,
-- max(e.marks) as Highest
-- from enrollments e
-- join students s
-- on s.student_id=e.student_id
-- group by s.name
-- order by Highest desc
-- limit 1

-- Q33
select course_id, avg(marks) from enrollments
-- group by course_id
-- order by avg(marks) desc
-- limit 1

-- Q34


-- Q1
-- Display all students from the Students table.
-- SELECT *
-- FROM Students;


-- Q2
-- Display the names of all students who belong to the Computer Science department.
-- SELECT name
-- FROM Students
-- WHERE department = 'Computer Science';


-- Q3
-- Find all students who live in Ahmedabad.
-- SELECT *
-- FROM Students
-- WHERE city = 'Ahmedabad';


-- Q4
-- Display all courses having more than 3 credits.
-- SELECT *
-- FROM Courses
-- WHERE credits > 3;


-- Q5
-- Find students who were admitted in 2024.
-- SELECT *
-- FROM Students
-- WHERE admission_year = 2024;


-- Q6
-- Display all enrollments where the marks are greater than 70.
-- SELECT *
-- FROM Enrollments
-- WHERE marks > 70;


-- Q7
-- Find the highest marks obtained in the Enrollments table.
-- SELECT MAX(marks) AS highest_marks
-- FROM Enrollments;


-- Q8
-- Find the lowest marks obtained in the Enrollments table.
-- SELECT MIN(marks) AS lowest_marks
-- FROM Enrollments;


-- Q9
-- Find the average marks of all students.
-- SELECT AVG(marks) AS average_marks
-- FROM Enrollments;


-- Q10
-- Find the total number of students.
-- SELECT COUNT(*) AS total_students
-- FROM Students;


-- Q11
-- Find the total number of courses.
-- SELECT COUNT(*) AS total_courses
-- FROM Courses;


-- Q12
-- Find the number of students in each department.
-- SELECT department, COUNT(*) AS student_count
-- FROM Students
-- GROUP BY department;


-- Q13
-- Find the average marks obtained in each course.
-- SELECT course_id, AVG(marks) AS average_marks
-- FROM Enrollments
-- GROUP BY course_id;


-- Q14
-- Find the number of students enrolled in each course.
-- SELECT course_id, COUNT(DISTINCT student_id) AS student_count
-- FROM Enrollments
-- GROUP BY course_id;


-- Q15
-- Find students who scored between 60 and 80 marks.
-- SELECT *
-- FROM Enrollments
-- WHERE marks BETWEEN 60 AND 80;


-- Q16
-- Display the student name, course name, and marks for every enrollment.
-- SELECT s.name AS student_name,
--        c.course_name,
--        e.marks
-- FROM Enrollments e
-- JOIN Students s
-- ON e.student_id = s.student_id
-- JOIN Courses c
-- ON e.course_id = c.course_id;


-- Q17
-- Find all students who have scored more than 80 marks.
-- SELECT DISTINCT s.*
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks > 80;


-- Q18
-- Find students who have scored less than 40 marks in any course.
-- SELECT DISTINCT s.*
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks < 40;


-- Q19
-- Find students who have enrolled in more than 2 courses.
-- SELECT student_id, COUNT(DISTINCT course_id) AS course_count
-- FROM Enrollments
-- GROUP BY student_id
-- HAVING COUNT(DISTINCT course_id) > 2;


-- Q20
-- Find courses having more than 3 enrolled students.
-- SELECT course_id, COUNT(DISTINCT student_id) AS enrolled_students
-- FROM Enrollments
-- GROUP BY course_id
-- HAVING COUNT(DISTINCT student_id) > 3;


-- Q21
-- Find the highest marks obtained in each course.
-- SELECT course_id, MAX(marks) AS highest_marks
-- FROM Enrollments
-- GROUP BY course_id;


-- Q22
-- Find the lowest marks obtained in each course.
-- SELECT course_id, MIN(marks) AS lowest_marks
-- FROM Enrollments
-- GROUP BY course_id;


-- Q23
-- Find the average marks of each student.
-- SELECT student_id, AVG(marks) AS average_marks
-- FROM Enrollments
-- GROUP BY student_id;


-- Q24
-- Display students whose average marks are greater than 70.
-- SELECT student_id, AVG(marks) AS average_marks
-- FROM Enrollments
-- GROUP BY student_id
-- HAVING AVG(marks) > 70;


-- Q25
-- Find students who have scored above 80 in at least one course.
-- SELECT DISTINCT s.*
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks > 80;


-- Q26
-- Find the total marks obtained by each student.
-- SELECT student_id, SUM(marks) AS total_marks
-- FROM Enrollments
-- GROUP BY student_id;


-- Q27
-- Find the department having the highest number of students.
-- SELECT department, COUNT(*) AS student_count
-- FROM Students
-- GROUP BY department
-- ORDER BY student_count DESC
-- LIMIT 1;


-- Q28
-- Find the course having the highest number of enrollments.
-- SELECT course_id, COUNT(*) AS enrollment_count
-- FROM Enrollments
-- GROUP BY course_id
-- ORDER BY enrollment_count DESC
-- LIMIT 1;


-- Q29
-- Find students who are not enrolled in any course.
-- SELECT s.*
-- FROM Students s
-- LEFT JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.student_id IS NULL;


-- Q30
-- Display Student Name, Course Name, Marks, and Result.
-- Use CASE:
-- marks >= 40 → Pass
-- marks < 40 → Fail
-- SELECT s.name AS student_name,
--        c.course_name,
--        e.marks,
--        CASE
--            WHEN e.marks >= 40 THEN 'Pass'
--            ELSE 'Fail'
--        END AS result
-- FROM Enrollments e
-- JOIN Students s
-- ON e.student_id = s.student_id
-- JOIN Courses c
-- ON e.course_id = c.course_id;


-- Q31
-- Find the second-highest marks obtained in the Enrollments table.
-- SELECT MAX(marks) AS second_highest_marks
-- FROM Enrollments
-- WHERE marks < (
--     SELECT MAX(marks)
--     FROM Enrollments
-- );


-- Q32
-- Find the student(s) who obtained the highest marks in the entire database.
-- SELECT s.name AS student_name,
--        e.marks
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks = (
--     SELECT MAX(marks)
--     FROM Enrollments
-- );


-- Q33
-- Find the course with the highest average marks.
-- SELECT c.course_id,
--        c.course_name,
--        AVG(e.marks) AS average_marks
-- FROM Courses c
-- JOIN Enrollments e
-- ON c.course_id = e.course_id
-- GROUP BY c.course_id, c.course_name
-- ORDER BY average_marks DESC
-- LIMIT 1;


-- Q34
-- Find students whose marks are greater than the overall average marks.
-- SELECT DISTINCT s.name AS student_name,
--        e.marks
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks > (
--     SELECT AVG(marks)
--     FROM Enrollments
-- );


-- Q35
-- Find students who have enrolled in at least 2 courses
-- and have an average mark greater than 70.
-- SELECT s.student_id,
--        s.name,
--        COUNT(DISTINCT e.course_id) AS course_count,
--        AVG(e.marks) AS average_marks
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- GROUP BY s.student_id, s.name
-- HAVING COUNT(DISTINCT e.course_id) >= 2
--    AND AVG(e.marks) > 70;


-- Q36
-- Find students who have never scored below 50 in any course.
-- SELECT s.student_id,
--        s.name
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- GROUP BY s.student_id, s.name
-- HAVING MIN(e.marks) >= 50;


-- Q37
-- Find courses where the average marks are greater than 70.
-- SELECT c.course_id,
--        c.course_name,
--        AVG(e.marks) AS average_marks
-- FROM Courses c
-- JOIN Enrollments e
-- ON c.course_id = e.course_id
-- GROUP BY c.course_id, c.course_name
-- HAVING AVG(e.marks) > 70;


-- Q38
-- Find the latest enrollment date for each student.
-- SELECT student_id,
--        MAX(enrollment_date) AS latest_enrollment_date
-- FROM Enrollments
-- GROUP BY student_id;


-- Q39
-- Find students who enrolled in a course during 2025.
-- SELECT DISTINCT s.*
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.enrollment_date >= '2025-01-01'
-- AND e.enrollment_date < '2026-01-01';


-- Q40
-- Find students who scored above 80 in at least two different courses.
-- SELECT s.student_id,
--        s.name
-- FROM Students s
-- JOIN Enrollments e
-- ON s.student_id = e.student_id
-- WHERE e.marks > 80
-- GROUP BY s.student_id, s.name
-- HAVING COUNT(DISTINCT e.course_id) >= 2;