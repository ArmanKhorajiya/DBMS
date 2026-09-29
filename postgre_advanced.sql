-- Q1
-- select
-- s.name,
-- c.course_name,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- join courses c
-- on c.course_id=e.course_id

-- Q2
-- select
-- s.name,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- where e.marks>85

-- Q3
-- select
-- c.course_name,
-- avg(e.marks) as average_marks
-- from courses c
-- join enrollments e
-- on c.course_id=e.course_id
-- group by course_name

-- Q4
-- select
-- c.course_name,
-- avg(e.marks) as average_marks
-- from courses c
-- join enrollments e
-- on c.course_id=e.course_id
-- group by course_name
-- having avg(e.marks)>85

-- Q5
-- select
-- s.name,
-- count(e.course_id) as total_courses
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- group by s.name

-- Q6
-- select
-- s.name,
-- avg(e.marks) as average_marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- group by s.name
-- order by avg(e.marks) desc
-- limit 1

-- Q7
select
s.student_id,
s.name
from students s
join enrollments e
on s.student_id=e.student_id
where e.student_id is null

-- Q8
-- select
-- s.name as student_name,
-- avg(e.marks) as average_marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- group by s.name
-- having avg(e.marks)>85

-- Q9
-- select marks as second_highest_marks from enrollments
-- where marks<(
--     select max(e.marks)
--     from enrollments e
-- )

-- Q10
-- select
-- c.course_name,
-- s.name as student_name,
-- e.marks
-- from students s
-- join enrollments e
-- on s.student_id=e.student_id
-- join courses c
-- on c.course_id=e.course_id
-- where e.marks = (
--     select max(e2.marks)
--     from enrollments e2
--     where e2.course_id = e.course_id
-- );