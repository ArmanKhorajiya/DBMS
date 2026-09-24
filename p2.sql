-- INNER JOIN:-

-- SYNTAX
-- select column_names
-- from Table1
-- INNER JOIN Table2
-- ON Table1.common_column = Table2.common_column;

-- example:
select student_name, department_name
from departments
inner join students
on departments.department_id = students.department_id;

-- Using Table Aliases:
select s.student_name,d.department_name
from students as s
inner  join departments as d
on s.department_id = d.department_id;

-- or:
select s.student_name,d.department_name
from students s
inner join departments d
on s.department_id = d.department_id;

-- ex:
select s.student_name,c.course_name
from students s 
inner join courses c
on s.student_id = c.student_id;

-- Show:
-- student_name
-- department_name
-- marks
select s.student_name,d.department_name,s.marks
from students s
inner join departments d
on s.department_id=d.department_id;

-- Show:
-- student_name
-- department_name
-- Only for students whose marks are greater than 80.
select s.student_name,d.department_name,s.marks
from students s
inner join departments d
on s.department_id=d.department_id
where marks > 80;

-- 🎯 Goal
-- Combine:
-- Students
-- Departments
-- Courses
-- to get information from all three
select 
s.student_id,
s.student_name,
d.department_name,
d.hod_name,
c.course_name,
c.credits,
s.marks
from students s
inner join departments d
on s.department_id=d.department_id
inner join courses c
on s.student_id=c.student_id
where s.marks>90;

-- Show:
-- student_name
-- department_name
-- course_name
-- hod_name
-- credits
-- marks
-- Sort by marks in descending order
select
s.student_name,
d.department_name,
c.course_name,
d.hod_name,
c.credits,
s.marks
from students s
inner join departments d
on s.department_id=d.department_id
inner join courses c
on s.student_id=c.student_id
order by s.marks desc;

-- Show:
-- student_name
-- department_name
-- course_name
-- Only courses with credits = 4
select 
s.student_name,
d.department_name,
c.course_name,
c.credits
from students s
inner join departments d
on s.department_id=d.department_id
inner join courses c
on s.student_id=c.student_id
where c.credits=4;

-- Show:
-- student_name
-- course_name
-- credits
-- Only students from Ahmedabad
select
s.student_name,
c.course_name,
c.credits,
s.city
from students s
inner join departments d
on s.department_id=d.department_id
inner join courses c
on s.student_id=c.student_id
where s.city='ahmedabad';

-- Show:
-- student_name
-- department_name
-- Only for students whose marks are between 70 and 90
select 
s.student_name,
department_name,
s.marks
from students s 
inner join departments d
on s.department_id=d.department_id
where s.marks between 70 and 90;

-- Show:
-- student_name
-- city
-- department_name
-- Only for students whose city starts with A
select
s.student_name,
s.city,
d.department_name
from students s 
inner join departments d
on s.department_id=d.department_id
where city like 'a%';

-- Show:
-- student_name
-- department_name
-- marks
-- Conditions:
-- marks > 80
-- city is Ahmedabad or Surat
-- Sort by marks in descending order
select
s.student_name,
d.department_name,
s.marks,
s.city
from students s
inner join departments d
on s.department_id=d.department_id
where s.marks>80 and city in ('ahmedabad','surat')
order by marks desc;


-- LEFT JOIN:-

-- SYNTAX:
-- select columns
-- from table1
-- left join table2
-- on table1.column=table2.column;

-- ex:
select
s.student_name,
d.department_name
from students s
left join departments d
on s.department_id=d.department_id;

select 
s.student_name,
c.course_name
from students s
left join courses c
on s.student_id=c.student_id;

-- Now write a query to show:
-- Student Name
-- Department Name
-- Course Name
-- using LEFT JOIN
select 
s.student_name,
d.department_name,
c.course_name
from students s
left join departments d
on s.department_id=d.department_id
left join courses c
on s.student_id=c.student_id;


-- RIGHT JOIN:-

-- SYNTAX:
-- select columns 
-- from Table1
-- right join Table2
-- on Table1.columnname=Table2.columnname;

-- ex:
select
d.department_name,
s.student_name
from students s
right join departments d
on s.department_id=d.department_id;

select
d.department_name,
s.student_name
from students s 
right join departments d
on s.department_id=d.department_id;

-- Display every department with its students
select
d.department_name,
s.student_name
from departments d
right join students s 
on d.department_id=s.department_id;

-- Display only the department names using RIGHT JOIN
select 
d.department_name
from departments d
right join students s
on d.department_id=s.department_id;

-- Find departments that have no students
select 
d.department_id,
d.department_name
from students s
right join departments d
on d.department_id=s.department_id
where s.student_id is null;

-- Display department names and student names ordered by department name
select
d.department_name,
s.student_name
from departments d
right join students s
on s.department_id=d.department_id
order by department_name asc;

-- Show all departments, but only students whose marks are greater than 80.
select
d.department_name,
s.student_name,
s.marks
from departments d
right join students s
on d.department_id=s.department_id
and s.marks>80;


-- FULL OUTER JOIN:-


-- SYNTAX:

-- ex:
select 
s.student_name,
d.department_name
from students s
left join departments d
on s.department_id=d.department_id

union

select 
s.student_name,
d.department_name
from students s
right join departments d
on s.department_id=d.department_id;


-- CROSS JOIN:-

-- SYNTAX:
-- SELECT columns
-- FROM Table1
-- CROSS JOIN Table2;

-- OR:

-- SELECT columns
-- FROM Table1, Table2;

-- ex:
SELECT
    s.student_name,
    d.department_name
FROM students s
CROSS JOIN departments d;


-- SELF JOIN:-

-- SYNTAX:

-- SELECT
--     a.column_name,
--     b.column_name
-- FROM TableName a
-- JOIN TableName b
-- ON a.common_column = b.common_column;

-- Show pairs of students in the same department
SELECT
    s1.student_name AS Student1,
    s2.student_name AS Student2,
    s1.department_id
FROM students s1
JOIN students s2
ON s1.department_id = s2.department_id;

-- Show pairs of students from the same city
SELECT
    s1.student_name AS Student1,
    s2.student_name AS Student2,
    s1.city
FROM students s1
JOIN students s2
ON s1.city = s2.city;

-- Count pairs of students in the same department
SELECT COUNT(*) AS TotalPairs
FROM students s1
JOIN students s2
ON s1.department_id = s2.department_id;

-- Show:
-- Student 1
-- Student 2
-- Department ID
-- Conditions:
-- Same department
-- No self-pair
-- No duplicate pair
SELECT
    s1.student_name AS Student1,
    s2.student_name AS Student2,
    s1.department_id
FROM students s1
JOIN students s2
ON s1.department_id = s2.department_id
WHERE s1.student_id < s2.student_id;

-- 1.Find students from the same city.
-- 2.Find students with the same marks.
-- 3.Find students with the same age.
-- 4.Find students from the same department.
-- 5.Find pairs of students from Ahmedabad.
-- 6.Find pairs of students having equal marks.
-- 7.Find pairs of students in the same course.
-- 8.Find students enrolled in the same semester.
-- 9.Find duplicate student names.
-- 10.Find duplicate cities.

-- 1
select 
s1.student_name as Student1,
s2.student_name as Student2,
s1.city
from students s1
join students s2
on s1.student_id=s2.student_id;

-- 2
select 
s1.student_name as Student1,
s2.student_name as Student2,
s1.marks
from students s1
join students s2
on s1.student_id=s2.student_id;

-- 3
select 
s1.student_name as Student1,
s2.student_name as Student2,
s1.age
from students s1
join students s2
on s1.student_id=s2.student_id;

-- 4
select
s1.student_name as Student1,
s2.student_name as Student2,
s1.department_id
from students s1
join students s2
on s1.department_id=s2.department_id
AND s1.student_id < s2.student_id;

-- 5
select
s1.student_name as Student1,
s2.student_name as Student2,
s1.city
from students s1
join students s2
on s1.city=s2.city
AND s1.student_id < s2.student_id
WHERE s1.city = 'Ahmedabad';

-- 6
select
s1.student_name as Student1,
s2.student_name as Student2,
s1.marks
from students s1
join students s2
on s1.marks=s2.marks
and s1.student_id<s2.student_id;

-- 7
SELECT
s1.student_name,
c.course_name
FROM students s1
JOIN courses c
ON s1.student_id = c.student_id;

-- 8
SELECT
    s1.student_name AS Student1,
    s2.student_name AS Student2,
    s1.semester
FROM students s1
JOIN students s2
ON s1.semester = s2.semester;

-- 9
SELECT DISTINCT
    s1.student_name
FROM students s1
INNER JOIN students s2
ON s1.student_name = s2.student_name
AND s1.student_id <> s2.student_id;

-- 10
SELECT DISTINCT
    s1.city
FROM students s1
INNER JOIN students s2
ON s1.city = s2.city
AND s1.student_id <> s2.student_id;