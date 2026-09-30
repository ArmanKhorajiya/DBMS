-- Q1
-- select now()

-- Q2
-- select current_timestamp

-- Q3
-- select extract(year from order_date)
-- from orders

-- Q4
-- select extract(month from order_date)
-- from orders

-- Q5
-- select extract(day from order_date)
-- from orders

-- Q6
-- select extract(hour from order_date)
-- from orders

-- Q7
-- select customer_name,extract(year from order_date) as order_year
-- from orders

-- Q8
-- select customer_name,extract(month from order_date) as order_month
-- from orders

-- Q9
-- select * from orders
-- where order_date>'2026-06-20'

-- Q10
-- select * from orders
-- where order_date<'2026-06-25'

-- Q11
-- select * from orders
-- where order_date between '2026-06-18' and '2026-06-25'

-- Q12
-- select * from orders 
-- where extract(month from order_date)='06'
-- and extract(year from order_date)='2026'

-- Q13
-- select order_date,order_date+INTERVAL'7 days' as seven_days_later
-- from orders

-- Q14
-- select order_date,order_date+INTERVAL'1 month' as one_month_later
-- from orders

-- Q15
-- select order_date,order_date+INTERVAL'2 year' as two_years_later
-- from orders

-- Q16
-- select * from orders
-- where order_date>=now()-INTERVAL'15 days'

-- Q17
-- select customer_name,
-- to_char(order_date,'dd mon yyyy') as order_date
-- from orders

-- Q18
-- select customer_name,
-- to_char(order_date,'YYYY-MM-DD HH24:MI:SS') as order_date
-- from orders

-- Q19
-- select to_char(order_date,'Day, DD Mon YYYY') as order_date
-- from orders

-- Q20
-- select customer_name || ' placed ' || product || ' on ' || to_char(order_date,'dd-mon-yyyy') 
-- from orders

--
-- S1
-- select * from acitivity
-- s2
-- select user_id,activity_date from activity
-- s3
-- select * from activity
-- where activity_date='2019-07-20'
-- s4
-- select * from acitivity
-- where acitivity_date>'2019-07-20'
-- s5
-- select count(*) from acitivity
-- s6
-- select count(distinct user_id) from acitivity
-- s7
-- select acitivity_date,count(*) from acitivity
-- group by acitivity_date
-- s8
-- select acitivity_date ,count(distinct user_id)
-- from acitivity
-- group by acitivity_date