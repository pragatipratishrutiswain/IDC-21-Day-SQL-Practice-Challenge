### Practice Questions:
-- 1. List all patients sorted by age in descending order.
select * from patients order by age desc;

-- 2. Show all services_weekly data sorted by week number ascending and patients_request descending.
select * from services_weekly order by week, patients_request desc;

-- 3. Display staff members sorted alphabetically by their names.
select * from staff order by staff_name;

### Daily Challenge:
-- Retrieve the top 5 weeks with the highest patient refusals across all services, showing week, service, 
-- patients_refused, and patients_request. Sort by patients_refused in descending order.
select distinct
	week,
	service, 
	patients_refused,
	patients_request
from services_weekly
order by patients_refused desc
limit 5;
