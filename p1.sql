-- Count the number of students in each city

select city, count(*) as stu 
from students
group by city;

-- Count the number of students in each department

select department_id, count(*) as Total
from students
group by department_id;

-- Find the average marks of students in each city

select city, avg(marks) as Average
from students
group by city;

-- Find the highest marks in each city

select city, max(marks) as  Highest
from students
group by city;

-- Find the lowest age in each city

select city, min(marks) as Lowest
from students 
group by city;

-- Find the total marks of students in each city

select city, sum(marks) as Total
from students
group by city;

-- Count male students in each city

select city, count(*) as Male
from students
where gender='male'
group by city;

-- Find the average marks of female students in each city

select city, avg(marks) as Average_Female_Marks
from students
where gender='female'
group by city;

-- Find the maximum age in each department

select department_id, max(age) as Highest_Age
from students
group by department_id;

-- Find the total number of students in each department.

select department_id, count(*) as Total
from students
group by department_id;

-- Using one query, show:
-- 				city
-- 				Number of students
-- 				Highest marks
-- 				Lowest marks
-- 				Average marks 

select city, 
count(*) as No_of_students,
max(marks) as Highest,
min(marks) as Lowest,
avg(marks) as Average
from students
group by city;

-- Count students in each department

select department_id,count(*) as Students
from students
group by department_id;

-- AND:-

select * from students
where city='delhi'
and marks<=85;

-- OR:-

select * from students
where city='ahmedabad'
or gender='male';

-- NOT:-

select * from students
where not city='ahmedabad';

-- AND + OR:-
-- Suppose you want:-
-- Students from Ahmedabad or Surat
-- AND marks above 80

select * from students 
where (city='ahmedabad' or city='surat')
and marks<=90;

-- IN (Shortcut for multiple OR conditions):-

select * from students
where city in ('delhi','surat','pune');
select * from students
where city not in ('delhi','surat','pune');

-- Show students from Ahmedabad whose marks are greater than 85

select * from students
where city in ('ahmedabad')
and marks>=85;

-- Show Female students whose marks are greater than 80.

select * from students
where gender='female' 
and marks>80;

-- Show students whose age is 20 or 21

select * from students
where age=20 or 21;

-- Show students who are not Male

select * from students 
where not gender='male';

-- Write a query to display:
-- student_name
-- city
-- marks
-- where:
-- City is Ahmedabad or Surat
-- Marks are greater than or equal to 85

select student_name,city,marks
from students
where city=('ahmedabad' or 'surat')
and marks>=85;


-- HAVING:-
-- Cities with more than 2 students

select city, count(*) as Total
from students
group by city
having count(*)>2;

-- Departments with an average marks greater than 80

select department_id, avg(marks) as Average
from students
group by department_id
having avg()>80;

-- Cities where the highest marks are greater than 90

select city, max(marks) as Highest
from students
group by city
having max(marks)>90;

-- WHERE + GROUP BY + HAVING
-- Suppose you want:
-- Only Female students
-- Group by city
-- Show cities having more than one female student

select city, count(*) as Female_Students
from students
where gender='female'
group by city
having count(*)>1;

-- Show cities having more than 2 students

select city,count(*) as Students 
from students
group by city
having count(*)>2;

-- Show departments having more than 1 student

select department_id, count(*) as Student
from students
group by department_id
having count(*)>1;

-- Show cities whose average marks are greater than 80

select city, avg(marks) as Average
from students
group by city
having avg(marks)>80;

-- Show departments whose highest marks are greater than 90

select department_id, max(marks) as highest
from students
group by department_id
having max(marks)>90;

-- Show cities whose lowest marks are less than 70

select city,min(marks) as Lowest
from students
group by city
having min(marks)<70;

-- Show departments whose total marks are greater than 150

select department_id, sum(marks) as Total
from students
group by department_id
having sum(marks)>150;

-- Display:
-- city
-- average marks
-- Only for Female students whose average marks are greater than 80

select city, avg(marks) as Average
from students
where gender='female'
group by city
having avg(marks)>80;

-- Show cities with more than 2 students

select city, count(*) as Total
from students
group by city
having count(*)>2;

-- Show departments with an average marks greater than 80

select department_id, avg(marks) as Average
from students
group by department_id
having avg(marks)>80;

-- Show cities whose maximum marks are above 90

select city, max(marks) as Maximum
from students
group by city
having max(marks)>90;

-- Show departments with total marks greater than 150

select department_id, sum(marks) as Total
from students
group by department_id
having sum(marks)<120;

-- Show cities with more than one female student

select city, count(*) as Female_Student
from students
where gender='female'
group by city
having count(*)>1;

-- DISTINCT:-

select distinct city 
from students;

select distinct gender
from students;

select distinct city,gender
from students;

select distinct city
from students
where marks>80;

select distinct city
from students
order by city asc;

-- ALIAS [AS or as keyword for using alias]

select student_name as First_Name
from students;

select 
student_name as First_Name,
marks as score,
city as City_Name
from students;

select count(*) as Total_Students
from students;

-- LIKE OPERATOR:-

-- Starts with (A%)
select *from students
where student_name like 'A%';

-- Ends with (%a)
select * from students
where student_name like '%a';

-- Contains (%ri%);
select * from students
where student_name like '%ri%';

-- Exactly one character (_)
select * from students
where student_name like 'r___';


-- Combining LIKE with AND
select * from students
where student_name like 'a%'
and marks>80;

-- LIKE + ORDER BY
select * from students
where student_name like '%a'
order by student_name asc;

-- LIKE + COUNT
select count(*) as Total from students
where student_name like'a%';

-- IN OPERATOR

-- Without IN:-
select * from students
where city='rajkot'
or city='ahmedabad'
or city='surat';

-- With IN:-
select * from students
where city in ('ahmedabad','rajkot','surat');

-- IN with Numbers:-
select * from students
where marks in(70,80,90);

-- IN + AND:-
select * from students
where city in ('surat','ahmedabad')
and marks>80;

-- IN + ORDER:-
select * from students
where city in ('surat','ahmedabad')
order by marks desc;

-- NOT IN:-
select * from students 
where city not in ('surat','ahmedabad');

-- IN Practice Questions:-

-- Show students from Rajkot or Ahmedabad
select * from students 
where city in ('ahmedabad','rajkot');

-- Show students in department 1 or department 2
select * from students
where department_id in (1,2);

-- Show departments named Computer or Civil
select * from departments
where department_name in ('computer science','civil');

-- Show students from Rajkot, Surat, or Ahmedabad, ordered by marks (highest first)
select * from students
where city in ('rajkot','ahmedababd','surat')
order by marks desc;


-- BETWEEN OPERATOR

select * from students
where marks between 70 and 90;

-- BETWEEN + AND:-
select * from students
where marks between 75 and 95
and city='ahmedabad';

-- BETWEEN + ORDER BY:-
select * from departments
where department_id between 1 and 8
order by department_name asc;

-- NOT BETWEEN:-
select * from courses
where course_id not between 1 and 8;

-- BETWEEN PRACTICE QUESTIONS:-

-- Show students whose marks are between 75 and 95, ordered by marks in descending order
select *  from students
where marks between 75 and 95 
order by marks desc;

-- Show students whose age is between 19 and 21 and who are from Ahmedabad
select * from students
where age between 19 and 21
and city='ahmedabad';

-- Show departments whose IDs are between 5 and 10
select * from departments
where department_id between 5 and 10;

-- Show courses whose credits are not between 3 and 4
select * from courses
where credits between 3 and 4;

-- Show students:
-- Marks between 80 and 95
-- Age between 20 and 22
select *  from students
where marks between 80 and 95
and age between 20 and 22;

-- Show students:
-- Marks between 70 and 90
-- City is either Ahmedabad or Surat
select * from students
where marks between 70 and 90
and city in ('ahmedabad','surat');

-- Show students whose marks are between 70 and 90
select * from students
where marks>70 and marks<90;

-- LIMIT OPERATOR:-
-- SELECT column_name
-- FROM table_name
-- LIMIT number;

select * from students
limit 5;

select * from departments
limit 3;

select * from courses 
limit 5;

-- LIMIT + ORDER BY:-

select * from students
order by marks desc
limit 5;

-- LIMIT + WHERE:-

select * from students
where marks<=90
limit 3;

-- LIMIT WITH IN:-

select * from students
where marks in (70,90)
limit 2;

-- LIMIT WITH  BETWEEN:-

select * from students
where marks between 75 and 95
limit 3;

-- OFFSET ( LIMIT OFFSET, COUNT):-

select * from students
limit 4,2;

-- Show the 2nd, 3rd, and 4th highest scoring students
select * from students
order by marks desc
limit 1,3;

-- Show the first 2 students from Ahmedabad or Surat whose marks are between 70 and 90
select *  from students
where city in ('ahmedabad','surat')
and marks between 70 and 90
limit 2;

-- Without using LIMIT, can you return only the highest-scoring student?
select * from students
where marks=(
	select max(marks)
    from students
);

-- IS NULL AND IS NOT NULL

-- IS NULL:-
select * from students
where city is null;

-- IS NOT NULL:-
select * from students
where city is not null;