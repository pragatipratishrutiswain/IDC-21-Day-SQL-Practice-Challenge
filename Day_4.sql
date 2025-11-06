### Practice Questions:

-- 1. Display the first 5 patients from the patients table.
select * from patients limit 5;

-- 2. Show patients 11-20 using OFFSET.
select * from patients limit 10 offset 10;

-- 3. Get the 10 most recent patient admissions based on arrival_date.
select * from patients order by arrival_date desc limit 10;

### Daily Challenge:

-- Find the 3rd to 7th highest patient satisfaction scores from the patients table, showing patient_id, name, 
-- service, and satisfaction. Display only these 5 records.
with cte as(
	select distinct satisfaction 
	from patients order by satisfaction 
    limit 5 offset 2
),
cte2 as (
	select distinct 
		patient_id, 
		name, 
		service, 
		satisfaction,
		row_number() over(partition by satisfaction order by patient_id) as rn
	from patients 
	where satisfaction in 
		(select * from cte)
	order by satisfaction
)
select
	patient_id, 
	name, 
	service, 
	satisfaction
from cte2 where rn = 1; 
