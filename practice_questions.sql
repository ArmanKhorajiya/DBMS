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
