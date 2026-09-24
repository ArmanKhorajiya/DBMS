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
-- select columns
-- from Table1
-- full outer join Table2
-- on Table1.column_name=Table2.column_name;

-- ex:
select 
s.student_name,
d.department_name
from students s
full outer join departments d
on s.department_id=d.department_id;