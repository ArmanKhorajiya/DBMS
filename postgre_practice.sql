-- Q1
-- select * from students

-- Q2
-- select name,city from students

-- Q3
-- select * from students
-- where age>18

-- Q4
-- select * from students
-- where city='Ahmedabad'

-- Q5
-- update students
-- set age=22
-- where student_id=2

-- Q6
-- delete from students
-- where student_id=5

-- Q7
-- select * from students
-- order by age desc

-- Q8
-- select * from students
-- order by age desc
-- limit 1

-- Q9
-- select avg(age) as Average_Age from students

-- 10
-- select city,count(age) as Total from students
-- group by city

-- Q11
-- select * from students
-- where age between 20 and 22

-- Q12
-- select * from students
-- where city in ('Ahmedabad','Surat')

-- Q13
-- select city from students
-- group by city

-- Q14
-- select name from students
-- where name like 'A%'

-- Q15
-- select * from students
-- where name like '%a%'

-- Q16
-- select * from students
-- order by age asc
-- limit 1

-- Q17
-- select count(student_id) as Total from students

-- Q18
-- select avg(age) as Average from students
-- where city='Ahmedabad'

-- Q19
-- select age,count(student_id) as Total from students
-- group by age
-- order by age asc

-- Q20
-- select city,count(student_id) as Total from students
-- group by city
-- order by Total desc
-- limit 1

-- Q21
-- alter table students
-- add column email varchar(50)

-- Q22
-- update students
-- set email='arman@gmail.com'
-- where student_id=1

-- Q23
-- select * from students
-- where email is null

-- Q24
-- alter table students
-- drop column email

-- Q26
-- select * from students
-- where age>20

-- Q27
-- select name,age from students
-- where city='Surat'

-- Q28
-- select * from students
-- where age between 18 and 22

-- Q29
-- select * from students
-- where city!='Ahmedabad'

-- Q30
-- select * from students
-- order by name asc

-- Q31
-- select * from students
-- order by age asc
-- limit 3

-- Q32
-- select max(age) as Highest_Age from students

-- Q33
-- select min(age) as Lowest_Age from students

-- Q34
-- select city,count(student_id) as Total from students
-- group by city

-- Q35
-- select city,count(student_id) as Total from students
-- group by city
-- having count(student_id)>1

-- Q36
