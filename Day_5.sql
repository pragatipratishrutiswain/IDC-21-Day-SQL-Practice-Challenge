### Practice Questions:

-- 1. Count the total number of patients in the hospital.
select count(patient_id) from patients;

-- 2. Calculate the average satisfaction score of all patients.
select round(avg(patient_satisfaction), 2) from services_weekly;

-- 3. Find the minimum and maximum age of patients.
select min(age) as min_age, max(age) as max_age from patients;

### Daily Challenge:
-- Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction 
-- across all services and weeks. Round the average satisfaction to 2 decimal places.
select
	service,
    week,
    sum(patients_admitted) as cnt_patients_admitted,
    sum(patients_refused) as cnt_patients_refused,
    round(avg(patient_satisfaction), 2) as avg_patient_satisfaction
from services_weekly
group by service, week;